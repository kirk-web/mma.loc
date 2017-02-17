<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \Symfony\Component\DomCrawler\Crawler as Crawler;
use Illuminate\Support\Facades\Auth;
use App\Bout;
use App\Bet;

class BoutController extends Controller
{
    private static $bouts = array();
    private static $event_id, $trs;

  /* public static function showBouts($event_id) {
        self::$event_id = $event_id;
        $html = file_get_contents('http://ufc-data-api.ufc.com/api/v1/us/events/'.$event_id);
        $crawler = new Crawler($html);


        $crawler->filter('div.flipcard-front')->each(function ($node, $i) {

            $bout = new Bout();
            $bout->	Event_id = self::$event_id;
            $bout->Bout_order = $i+1;
            $bout->Red_fighter = $node->filterXPath('//h1[@class="fighter-name-red"]')->text();
            $bout->Blue_fighter = $node->filterXPath('//h1[@class="fighter-name-blue"]')->text();
            $bout->Red_image = $node->filterXPath('//img[@class="fc-portrait-red"]')->attr('src');
            $bout->Blue_image = $node->filterXPath('//img[@class="fc-portrait-blue"]')->attr('src');

            $stats = $node->filter('tr>td')->each(function (Crawler $node, $i) {
                return $node->text();
            });

            $bout->Red_record = $stats[0];
            $bout->Blue_record = $stats[2];
            $bout->Red_height = $stats[3];
            $bout->Blue_height = $stats[5];
            $bout->Red_weight = $stats[6];
            $bout->Blue_weight = $stats[8];
           $bout->save();
             array_push(self::$bouts,$bout);
        });

        $bouts = self::$bouts;
      //  dd($bouts);
       return view('event',compact("bouts"));

    }*/

    public static function showBouts($event_id) {
        $Bout = new Bout();
        $bouts = Bout::where('Event_id', $event_id)->get();
        return view('event',compact("bouts"));
    }

    public static function getUserBets($event_id) {
        $user = Auth::user();
        if($user) {
            $userid = $user->id;
            $bet = new Bet();
            $bet = $bet->where('User_id', $userid)->where('Event_id', $event_id)->get();
            if($bet->isEmpty()) {
               return 0;
            }
             else {
                 return $bet[0]->results;
             }

        }
        else {
            echo 'Авторизируйтесь';
        }
    }


}
