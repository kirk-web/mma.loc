<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Bet;


class BetsController extends Controller
{
    public static function  makeBet(Request $request, $event_id) {

        $user = Auth::user();
        if($user) {

            $resultsJson = $request->results;
            $bet = new Bet();
            $bet = $bet->where('User_id', $user->id)->where('Event_id', $event_id)->get();

            if($bet->isEmpty()) {
                $bet = new Bet();
                $bet->User_id = $user->id;
                $bet->Event_id = $event_id;
                $bet->results = $resultsJson;
                $bet->save();
            }
            else {
                $bet = new Bet();
                $bet->where('User_id', $user->id)->where('Event_id', $event_id)->update(['results' => $resultsJson]);
            }



        }
        else {
            echo 'you sholud autorize!';
        }

    }
}
