 @include('includes.header')

        <div class="container">
		
            <div class="kopa-breadcrumb">
                <span class="kopa-brf">You are here: </span>
                <span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" href="#"><span itemprop="title">Home</span></a> / </span>
                <span itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a itemprop="url" href="#"><span itemprop="title">Contact</span></a></span>
            </div>
            <!-- kopa-breadcrumb -->
			
             <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div id="main-content">
                        <div class="widget kopa-list-posts-widget">
                            <header class="widget-header">
                                <h3 class="widget-title">Entertaiment</h3>
                                <i class="fa fa-plus-square-o"></i>
                            </header>
                        
						<table>
							<thead>
								<tr>
									<td>id</td>
									<td>Poster</td>
									<td>Title</td>
									<td>Date</td>
									<td>Location</td>
									<td></td>
								</tr>
							</thead>
							<tbody>
								@foreach ($events as $event)
									<tr id="eventid-{{ $event->id }}">
										<td>{{ $event->id }}</td>
										<td><img  width="100" src="{{ $event->feature_image }}" /></td>
										<td>{{ $event->title_tag_line }}<br />{{ $event->base_title }}</td>
										<td>{{ $event->event_dategmt }}</td>
										<td>{{ $event->location }}<br />{{ $event->arena }}</td>
										
										<td><a href="<?php echo route('profile').'/'.$event->id ?>" class="btn">Перейти</a></td>
									</tr>
								@endforeach
							</tbody>
						</table>
						
						<style>
							table thead td{
								font-weight:bold;
							}
							table td {
								vertical-align:middle;
								padding:15px;
								border:1px solid #e4e3f0;
							}
						</style>
						
						
                          
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