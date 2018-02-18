<?php

$sql = "SELECT
		    a.`from_price`,
		    a.`beds`,
		    a.`sqm`,
		    a.`pax`,
		    pmd.`name`,
		    pmd.`short_description`,
		    pmd.`thumb_photo`,
		    pmd.`full_url`
		FROM
		    `accommodation` a
		LEFT JOIN `page_meta_data` pmd ON
		    (pmd.`id` = a.`page_meta_data_id`)
		WHERE
		    pmd.`status` = 'A'
		ORDER BY
		    pmd.`rank`";

$all_accom = fetch_all($sql);



if(!empty($all_accom))
{

	$index = 0;

	foreach ($all_accom as $accom) {
		
		$index++;
		$price= $accom['from_price'];
		$dollar='<i class="fa fa-dollar" aria-hidden="true"></i>';


		$accom_items .= <<<HTML

			<div class="col-xs-12 col-sm-6 col-md-4 grid--row">	
			<div class="grid__col--has-shadow">
			<h2 class="heading--outline heading--outline-center"><a href="{$accom['full_url']}">{$accom['name']}</a></h2>
			 <div class="ql">			
				<div class="row grid--row-image">						
					<a href="{$accom['full_url']}">
						<div class="hero-image" style="background-image:url('{$accom['thumb_photo']}');">
						</div>	
					</a>
				</div>
				<div class="grid--row-content text-center">
					<div class="details">
						<p class="details__description">{$accom['short_description']}</p>
							
						
					</div>
				 </div>

				 <div class="room-info">
					 <div class="quicklink-icons">
								<span class="quicklink-icons__stats"><i class="fa fa-bed"></i> {$accom['beds']}</span>
								<span class="quicklink-icons__stats"><i class="fa fa-user"></i> {$accom['pax']}</span>
								<span class="quicklink-icons__stats"><i></i>SQM: {$accom['sqm']}</span>
					</div>
					<div class="price-sticker">
						<div class="price-quicklink">FROM: <span class="pricetag">$dollar</span><span class="num-p">$price</span></span></div>
					</div>
				</div>
				<div class="view-deatils text-center">
					<a class="btn btn-quicklink" href="{$accom['full_url']}">View details</a>
				</div>
				</div>

				

				</div>
			</div><!--  end col -->
HTML;
	}

	$accom_list = <<<HTML
		<section class="accom-list hidden-xs">
			<div class="container container-fw grid--wrapper">
			<h1>Your Accommodation Options</h1>
				{$accom_items}
			</div>
		</section>

HTML;

	$tags_arr['accommodation_view'] .= $accom_list;
}


?>