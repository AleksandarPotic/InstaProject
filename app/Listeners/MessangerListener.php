<?php

namespace App\Listeners;

use App\Events\Messanger;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class MessangerListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Messanger  $event
     * @return void
     */
    public function handle(Messanger $event)
    {
        dd($event);
    }
}
