<?php

namespace App\Http\Resources\Post;

use Illuminate\Http\Resources\Json\JsonResource;

class PostResource extends JsonResource
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
            'user' => $this->user,
            'comments' => $this->comments,
            'img' => 'http://localhost:8000/user/images/'.$this->images,
            'description' => $this->description,
            'likes' => $this->likes,
            'location' => $this->location,
            'created_at' => $this->created_at->diffForHumans()
        ];
    }
}
