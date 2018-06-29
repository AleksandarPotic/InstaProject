<?php

namespace App\Http\Controllers\User;

use App\Events\MessagePosted;
use App\Follower;
use App\Following;
use App\Http\Resources\User\MessangerResource;
use App\Http\Resources\User\UserResource;
use App\Messanger;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::all();

        return UserResource::collection($users);
    }

    public function store(Request $request)
    {
        $user = User::where('id',$request->auth_user_id)->first();

        $name = str_random(20);
        $info = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $request->image));
        Storage::put('/public/profile/'.$name.'.jpg',$info);

        $user->avatar = Storage::url('profile/'.$name.'.jpg');

        $user->save();
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function follow(Request $request)
    {
        $follow = new Follower();

        $follow->user_id = $request->auth_user;
        $follow->follow = $request->user_id;

        $follow->save();

        $following = new Following();

        $following->user_id = $request->user_id;
        $following->following = $request->auth_user;

        $following->save();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function unfollow(Request $request)
    {
        $follow = Follower::where([['user_id',$request->auth_user],['follow',$request->user_id]])->delete();
        $following = Following::where([['user_id',$request->user_id],['following',$request->auth_user]])->delete();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function messanger(Request $request)
    {
        $messangers = Messanger::where([['user_id',$request->auth_user_id],['receiver',$request->user_id]])->orWhere([['user_id',$request->user_id],['receiver',$request->auth_user_id]])->get();

        return MessangerResource::collection($messangers);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function sendMessage(Request $request)
    {
        $user = User::where('id',$request->user_id)->first();

        $message = new Messanger();

        $message->user_id = $request->auth_user_id;
        $message->receiver = $request->user_id;
        $message->text = $request->text;

        $message->save();

        $message1 = new MessangerResource($message);

        event(new \App\Events\Messanger($message1));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function allMessage()
    {
        $messages = Messanger::all();
        return MessangerResource::collection($messages);
    }

    public function follower(Request $request)
    {
        $user = User::where('id',$request->auth_user_id)->first();

        return $user->followers;
    }
}
