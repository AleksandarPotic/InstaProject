<?php

namespace App\Http\Controllers\User;

use App\Http\Resources\Post\PostCollection;
use App\Http\Resources\Post\PostResource;
use App\Like;
use App\Post;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return Auth::user();
        $posts = Post::orderBy('created_at','desc')->get();
        return PostResource::collection($posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $name = str_random(20);
        $info = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $request->image));
        Storage::put('/public/'.$name.'.jpg',$info);

        $post = new Post();

        $post->user_id = $request->auth_user_id;
        $post->location = $request->location;
        $post->description = $request->description;
        $post->images = Storage::url($name.'.jpg');

        $post->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::where('id',$id)->first();
        return new PostResource($post);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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

    public function like(Request $request)
    {
        //return $request->user_id;

        $user = User::where('id',$request->user_id)->first();

        $like = Like::where([['post_id',$request->post_id],['user_id',$user->id]])->first();

        if (!$like) {
            $lk = new Like();

            $lk->post_id = $request->post_id;
            $lk->user_id = $user->id;
            $lk->user_nick_name = $user->nick_name;
            $lk->user_avatar = $user->avatar;

            $lk->save();

            return 'like';
        } else {
            $like->delete();

            return 'dislike';
        }
    }

    public function indexPost(Request $request)
    {
        $user = User::where('id',$request->auth_user_id)->first();
        $posts = [];

        $followers = $user->followers;
        foreach ($followers as $follower) {
            $items = Post::where('user_id',$follower->follow)->get();
            foreach ($items as $item) {
                array_push($posts,$item);
            }
        }

        return $posts;
        //return PostResource::collection($posts);
    }
}
