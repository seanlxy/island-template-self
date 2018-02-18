<?php

$body_cls = (!empty($is_home_page))? ' home' : '';

$slideshow_photos = fetch_all("SELECT `full_path`, `width`, `height`, `caption`, `alt_text`
    FROM `photo`
    WHERE `photo_group_id` = '{$slideshow_id}'
    AND `full_path` != ''
    ORDER BY `rank`");



//$tags_arr['no-booking-btn-class-slider'] = '';
if( !empty($slideshow_photos) )
{
    foreach ($slideshow_photos as $slideshow_photo)
    { 

       $booking_btn_caption = (($resbook_id) ? 
        '<div class="heroshot_overlay heroshot__caption">' 
        : 
        '<div class="heroshot_overlay heroshot__caption heroshot__caption_no_btn">');

       $booking_button = (($resbook_id) ? '<div class="booking">'.$booking.'</div>' : '');

       $slideshow_caption = (($slideshow_photo['caption'] || $resbook_id) ? '
        '.$booking_btn_caption.'
          <div class="caption_container">
            <p class="heroshot__caption__text">
              '.$slideshow_photo['caption'].'
            </p>
          </div>
          '.$booking_button.'
        </div>' 
        : '');

       $slideshow_view .= '<div class="slider__img item" style="background-image: url('.$slideshow_photo['full_path'].');">
       '.$slideshow_caption.'</div>';     
    }

    $slideshow_view = '<div id="slider-wrapper" class="slider-wrapper'.((!empty($is_home_page)) ? ' slider-wrapper--fs' : '' ).'">
        <div id="slider" class="slider">
            '.$slideshow_view.'
        </div><!-- /#slider -->
            '.$scroll_icon.'
    </div><!-- /#slider-wrapper -->';
}

?>