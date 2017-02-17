@include('includes.header')

<div class="container">

	<div class="kopa-breadcrumb">
		<span class="kopa-brf">You are here: </span>
		<span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" href="#"><span itemprop="title">Home</span></a> / </span>
		<span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" href="#"><span itemprop="title">Contact</span></a></span>
	</div>
	<!-- kopa-breadcrumb -->

	<meta name="csrf-token" content="{{ csrf_token() }}">

	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
			<div id="main-content">
				<div class="widget kopa-list-posts-widget">
					<header class="widget-header">
						<h3 class="widget-title">Entertaiment</h3>
						<i class="fa fa-plus-square-o"></i>
					</header>

					<div class="fight_card">
						<button class="btn btn-lg make_bet">Обновить</button>

						@foreach ($bouts as $bout)
							<div class="bout row" id="{{ $bout->id }}">
								<div class="col-sm-6 red_fighter">
									<div class="col-sm-4 info">
										<h6>{{ $bout->Red_fighter }}</h6>
										<h6>{{ $bout->Red_record }}</h6>
										<h6>{{ $bout->Red_height }}</h6>
										<h6>{{ $bout->Red_weight }}</h6>
									</div>
									<div class="col-sm-8">
										<img src="{{ $bout->Red_image }}" />
									</div>
								</div>
								<div class="col-sm-6 blue_fighter">
									<div class="col-sm-8">
										<img src="{{ $bout->Blue_image }}" />
									</div>
									<div class="col-sm-4 info">
										<h6>{{ $bout->Blue_fighter }}</h6>
										<h6>{{ $bout->Blue_record }}</h6>
										<h6>{{ $bout->Blue_height }}</h6>
										<h6>{{ $bout->Blue_weight }}</h6>
									</div>

								</div>

								<div class="bets">

									<div class="col-sm-5 red_bet">
										<input type="radio" id="red-ko-{{ $bout->id}}" name="radio-bout-{{ $bout->id}}" value="{{ $bout->Red_fighter }}" meth="KO/TKO" >
										<label for="red-ko-{{ $bout->id}}">KO/TKO</label>
										<input type="radio" id="red-sub-{{ $bout->id}}" name="radio-bout-{{ $bout->id}}" value="{{ $bout->Red_fighter }}" meth="SUB" >
										<label for="red-sub-{{ $bout->id}}">SUB</label>
										<input type="radio" id="red-dec-{{ $bout->id}}" name="radio-bout-{{ $bout->id}}" value="{{ $bout->Red_fighter }}" meth="DEC" >
										<label for="red-dec-{{ $bout->id}}">Decision</label>
									</div>

									<div class="col-sm-2 drow_bet">
										<input type="radio" id="drow-{{ $bout->id}}" name="radio-bout-{{ $bout->id}}" value="drow"  meth="DROW" >
										<label for="drow-{{ $bout->id}}">DRAW/NC</label>
									</div>

									<div class="col-sm-5 blue_bet">
										<input type="radio" id="blue-ko-{{ $bout->id}}" name="radio-bout-{{ $bout->id}}" value="{{ $bout->Blue_fighter }}" meth="KO/TKO" >
										<label for="blue-ko-{{ $bout->id}}">KO/TKO</label>
										<input type="radio" id="blue-sub-{{ $bout->id}}" name="radio-bout-{{ $bout->id}}" value="{{ $bout->Blue_fighter }}" meth="SUB" >
										<label for="blue-sub-{{ $bout->id}}">SUB</label>
										<input type="radio" id="blue-dec-{{ $bout->id}}" name="radio-bout-{{ $bout->id}}" value="{{ $bout->Blue_fighter }}" meth="DEC" >
										<label for="blue-dec-{{ $bout->id}}">Decision</label>
									</div>

								</div><!-- bets end -->

							</div><!-- bout row end -->
						@endforeach

							<button class="btn btn-lg make_bet">Обновить</button>


					</div><!-- fight_card end -->


					<script>
                        window.onload = function() {
                            (function ($) {
                                // download saved_data
                                var CSRF_TOKEN = $('meta[name="csrf-token"]').attr('content');
                                var getBetsUrl = window.location.href+'/get-user-bets';
                                $.ajax({
                                    type: 'POST',
                                    url: getBetsUrl,
									datatype:'json',
                                    data: {_token: CSRF_TOKEN},
                                    success: function(bets) {
                                        var bets = $.parseJSON(bets);
                                      	 for (var i = 0; i < bets.length; i++) {
											var boutId= 'radio-bout-'+ bets[i][0];
                                            var boutWinner= bets[i][1];
                                            var boutMeth= bets[i][2];
                                           $('input[name="' + boutId + '"][value="' + boutWinner + '"][meth="' + boutMeth + '"]').prop('checked', true);
                                        }
                                    }
                                });

                                //make new bet
								$('button.make_bet').click(function () {
                                    var allBetsDone=true;
                                  $( ".bout" ).each(function() {

                                        var radio_buttons = $(this).find("input[type='radio']");
											if( radio_buttons.filter(':checked').length == 0){
												$(this).css('background','#f2dede');
                                                allBetsDone = false;

											}
											else {
                                                $(this).css('background','#dff0d8');

											}

                                    });

                                    console.log(allBetsDone);
                                   if (allBetsDone) {

                                       var results = [];
                                       $( ".bout" ).each(function() {
                                           $checked = $(this).find("input[type='radio']:checked");
                                           var boutId = $(this).attr('id');
                                           var winner = $checked.val();
                                           var method = $checked.attr('meth');
                                           var result = [boutId,winner,method];
                                           results.push(result);
                                           //console.log('boutID = '+ boutId + ' '+winner + ' by ' + method);
                                       });
                                       var results = JSON.stringify(results);

										var makeBetsUrl = window.location.href+'/make-bet';
                                    	$.ajax({
                                            type: 'POST',
                                           	 url: makeBetsUrl,
                                       		 data: {_token: CSRF_TOKEN,results:results},
											success: function(res) {
                                                alert('Данные обновлены');
                                                location.reload();
												console.log(res);
											}
                                        });
								   }
								   else {
                                       alert('Сделайте ставки на все бои');
								   }


                                });



                            })(jQuery);
                        }

					</script>


				</div>
				<!-- kopa-list-posts-widget -->
			</div>
			<!-- main content -->
		</div>
		<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
			<!--sidebar here-->
		</div>


	</div>
	<!-- row -->
</div>
<!-- container -->

@include('includes.footer')