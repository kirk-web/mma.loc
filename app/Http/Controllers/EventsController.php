<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events;




class EventsController extends Controller
{
   public static function showEvents() {
	  $events = new Events;
		$events = Events::getAllEvents();
		$events = compact('events');
		return view('events',$events);	
   }

}
