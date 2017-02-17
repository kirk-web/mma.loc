<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Events extends Model
{
    public static function getAllEvents() {
		$json = file_get_contents('http://ufc-data-api.ufc.com/api/v1/us/events');
		$obj = json_decode($json,false);
		return $obj;
	}
	
	public static function getEvent($id) {
		
	}
}
