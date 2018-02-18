<?php

//single accommodation
$accom_url = $option1;

$sql = "SELECT a.`id`, a.`page_meta_data_id`, a.`from_price`, a.`gallery_id`, a.`slideshow_id`,
	a.`beds`,a.`sqm`,a.`pax`, 
    pmd.`heading`, pmd.`title`, pmd.`meta_description`, pmd.`introduction`, pmd.`full_url`,
    pmd.`og_title`, pmd.`og_image`, pmd.`og_meta_description`, pmd.`photo`
    FROM `accommodation` a
    LEFT JOIN `page_meta_data` pmd
    ON(pmd.`id` = a.`page_meta_data_id`)
    WHERE pmd.`url` = '$option1'
    LIMIT 1";


$row = fetch_row($sql);

if(!empty($row))
{
	@extract($row);

// 	$booking = <<<H
// 		<div class="booking-wrapper">
// 		    <form action="{$page_bookings->full_url}" method="post" class="form" role="form">
// 		        <div class="form-group">
// 			        <div class="input-group">
// 			          <label class="input-group-addon" for="check-in"><i class="fa fa-calendar"></i></label>
// 			          <input type="text" class="form-control" readonly id="check-in" value="" name="check-in" placeholder="Enter your check-in date">
// 			        </div>
// 			    </div>
// 			    <button type="submit" class="btn btn-brown" value="1" name="check-avail" id="check-avail">Check Availability</button>
// 			    <div class="clearfix"></div>
// 		    </form>
// 		</div>
// H;
	
	//$price = ($from_price != '0.00') ? '<h2 class="main__intro--sub-heading">From NZD &dollar;'.floor($from_price).'</h2>' : '';

	$tags_arr['title']          	= $title;
	$tags_arr['mdescr']         	= $meta_description;
	$tags_arr['og_url']         	= $htmlroot.'/'.$full_url;
	$tags_arr['og_meta_description']= $og_meta_description;
	$tags_arr['og_image']       	= $og_image;
	$tags_arr['og_title']       	= $og_title;
	$tags_arr['heading']        	= ($heading) ? $heading : '';
	//$tags_arr['sub-heading']        = ($price) ? $price : '';
	$tags_arr['introduction']      	= ($introduction) ? $introduction : '';
	//$tags_arr['slideshow_view']     = ($slideshow_id) ? ''..'' : '';
	$tags_arr['beds']          		= $beds;
	$tags_arr['pax']         		= $pax;
	$tags_arr['sqm']         		= $sqm;
	$tags_arr['from_price']         = $from_price;



	$tags_arr['content']        .= get_content($page_meta_data_id);

	$tags_arr['content']        .= <<<H
				
		
		
H;


	
	$attached_ids  = fetch_value("SELECT GROUP_CONCAT(`feature_id`) FROM `accom_has_feature` WHERE `accom_id` = '$id'");

	$sql2 = "SELECT `name` FROM `accom_feature` WHERE `id` IN ($attached_ids) AND `status` = 'A' ORDER BY `rank`";
    $feat_arr = fetch_all($sql2);

    $feat_list = '';

    if(!empty($feat_arr))
    {
    	foreach ($feat_arr as $feat) {
    		
    		$list .= '<li>'.$feat['name'].'</li>';
    	}
    }
    
	if(!empty($row)){
        @extract($row);

        $tags_arr['beds']               = $beds;
        $tags_arr['pax']                = $pax;
        $tags_arr['sqm']                = $sqm;
        $tags_arr['from_price']         = $from_price;
        $dollar='<i class="fa fa-dollar" aria-hidden="true"></i>';
        $room_info= <<<HTML
        <div class="row">
            <div class="col-xs-12 hidden-sm hidden-md hidden-lg">
                <div class="room-info-sticker">
                    <div class="room-info-mid">
                        <span class="quicklink-icons__stats room-info-mid-icon"> <i class="fa fa-bed"></i> <span class="data">$beds</span></span>
                        <span class="quicklink-icons__stats room-info-mid-icon"><i class="fa fa-user"></i> <span class="data">$pax</span></span>
                        <span class="quicklink-icons__stats room-info-mid-icon"><i></i>SQM <span class="data">$sqm</span></span>
                    </div>

                    <div class="price-sticker-bot">
                        <div class="price-quicklink btn"><span class="from">FROM</span> <span class="pricetag">$dollar</span><span class="num-p">$from_price</span></span></div>
                    </div>
                </div>
            </div> 
        </div>
HTML;
}else{
	$room_info='';
}


    $tags_arr['accommodation_view']  = <<<HTML
	  	<section class="section section--accom">
		  	<div class="container">
		  		<div class="features--wrapper">
		            <div class="row features--content">
		            	$room_info
		                <div class="col-xs-12 col-heading">
		     				<h2 class="feature-heading">Amenities</h2>
		     			</div>
		     			<div class="col-xs-12 col-list">
							<ul class="features--list">
								{$list}
							</ul>
		     			</div>
	            	</div>
	        	</div>
	        </div>
    	</section>
HTML;

require_once 'views/nav.php';
require_once 'gallery.php';

if(!empty($page_bookings->url) && ($resbook_id != null || $booking_engine_url != null))
{
   $active_btn_cls = ($page_bookings->id == $page_id) ? ' active' : '';
   if(!empty($resbook_id))
   {
        $booknow  = '<a href="'.$page_bookings->url.'" title="" class="btn booking-btn'.$active_btn_cls.'">Book Online</a>';
   }elseif(!empty($booking_engine_url))
   {
        $booknow   = '<a href="'.$booking_engine_url.'" target="_blank" title="" class="btn booking-btn'.$active_btn_cls.'">Book Online</a>';
   }
}else{
    $booknow  = '';
}

$tags_arr['accommodation_view']  .= <<<HTML
	<div class="container">
		<div class="row">
			<div class="col-sm-12 hidden-xs accom-single-booking">

		  		$booknow 
		  	</div>
	  	</div>
  	</div>
HTML;

require_once 'views/single_quicklink.php';


}




?>