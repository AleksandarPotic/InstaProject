<?php

namespace App\Http\Resources\User;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'nick_name' => $this->nick_name,
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'avatar' => $this->avatar,
            'email' => $this->email,
            'posts' => $this->posts,
            'follower' => $this->followers,
            'following' => $this->followings,
            'messangers' => $this->messangers,
            'activate_now' => $this->activate,
            'activate' => $this->updated_at->diffForHumans()
        ];
    }
}
