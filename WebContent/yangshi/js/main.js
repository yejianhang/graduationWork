'use strict';
//Window Loaded Handler
  $(window).load(function(){
 		$(".page-loader").fadeOut("slow"); 
  });
  
//	Back to Top
	
	if ($('.go-top').length) {
    var scrollTrigger = 100, // px
        backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('.go-top').addClass('show');
            } else {
                $('.go-top').removeClass('show');
            }
        };
    backToTop();
    $(window).on('scroll', function () {
        backToTop();
    });
    $('.go-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 700);
    });
}
 
 //Slider Main
  jQuery('.fullscreenslider').revolution({
			delay:1500,
			startwidth:1170,
			startheight:500,
			hideThumbs:10,
			fullWidth:"off",
			fullScreen:"on",
			shadow:0,
			dottedOverlay:"none",
			fullScreenOffsetContainer: ""      
	 });
  

// Vieoo Intro

$( document ).on('ready',function() {
    scaleVideoContainer();
    initBannerVideoSize('.video-container .poster img');
    initBannerVideoSize('.video-container .filter');
    initBannerVideoSize('.video-container video');
    $(window).on('resize', function() {
        scaleVideoContainer();
        scaleBannerVideoSize('.video-container .poster img');
        scaleBannerVideoSize('.video-container .filter');
        scaleBannerVideoSize('.video-container video');
    });

});

function scaleVideoContainer() {

    var height = $(window).height() + 5;
    var  unitHeight = parseInt(height, 10);
    $('.homepage-hero-module').css('height',unitHeight);

}

function initBannerVideoSize(element){

    $(element).each(function(){
        $(this).data('height', $(this).height());
        $(this).data('width', $(this).width());
    });

    scaleBannerVideoSize(element);

}

function scaleBannerVideoSize(element){

    var windowWidth = $(window).width(),
    windowHeight = $(window).height() + 5,
    videoWidth,
    videoHeight;

    console.log(windowHeight);

    $(element).each(function(){
        var videoAspectRatio = $(this).data('height')/$(this).data('width');

        $(this).width(windowWidth);

        if(windowWidth < 1000){
            videoHeight = windowHeight;
            videoWidth = videoHeight / videoAspectRatio;
            $(this).css({'margin-top' : 0, 'margin-left' : -(videoWidth - windowWidth) / 2 + 'px'});

            $(this).width(videoWidth).height(videoHeight);
        }

        $('.homepage-hero-module .video-container video').addClass('fadeIn animated');

    });
}


//Change Diffrent Logos on Nav
  jQuery(window).scroll(function() {
  
	 if (jQuery(window).scrollTop() >= 25) {
		jQuery(".logo-change > img").attr("src", "images/logo.png");
	 }
	  else {
		jQuery(".logo-change > img").attr("src", "images/logo-white.png");
	 }
  
  });
   

// Go To Top
  $('a.page-scroll, .cbp-spmenu a').on('click', function(event){
        //var $nav_height = $('#navigation.affix').outerHeight();		
		var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1200, 'easeInOutExpo');
       event.preventDefault();;
		$('#navigation').affix({offset: {top: 50} });
		
		
   });


// Counters
	 $(".number-counters").appear(function () {
		$(".number-counters [data-to]").each(function () {
		  var e = $(this).attr("data-to");
		  $(this).delay(6e3).countTo({
			 from: 50,
			 to: e,
			 speed: 3e3,
			 refreshInterval: 50
		  })
		})
	 });
		  
	
  
// Testinomial 
	$("#testinomial-slider").owlCarousel({
		  autoPlay : true,
		  navigation : false,
		  slideSpeed : 250,
		  pagination : false,
		  navigationText :["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
		  singleItem:true
	
	 });
	 
// client slider
    $("#client-slider").owlCarousel({
		items : 4,
    itemsDesktop : [1199,3],
    itemsDesktopSmall : [980,2],
    itemsTablet: [768,1],
    autoPlay : 5000,
    stopOnHover : true,
    pagination : false,
	navigation : false
  });
  
//For Blog  Slider
    $("#blog-slider").owlCarousel({
		  autoPlay: true, 
		  pagination : false,
		  navigationText :["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
		  navigation : false,
		  items : 3,
		  itemsDesktop : [1199,3],
		  itemsDesktopSmall : [979,3]
  });
  
//Paralax Page Slider 
      $("#paralax-slider").owlCarousel({
autoPlay: 3000,
          navigation : false, // Show next and prev buttons
          slideSpeed : 300,
          pagination : true,
          singleItem:true, 
		
      });

// portfolio filtering
    $(".Portfolio-wrapper").mixItUp();
	 
	 
	 
 // portfolio Popup
   $(".fancybox").fancybox({
		openEffect : 'fade',
		closeClick : true,
    });
//portfolio Video Popup
	 $('.fancybox-media').fancybox({
		openEffect  : 'fade',
		closeEffect : 'none',
		helpers : {
			media : {}
		}
	});
	
	//slide menu on click
	$('.toggle-menu').jPushMenu();
	  $(document).on('click', function () {
        $('.cbp-spmenu-right').removeClass('menu-open');
    });
    $('#menu-toggle').on('click', function (e) {
        e.stopPropagation();
        $('.cbp-spmenu-right').toggleClass('menu-open');
    });
    $('.cbp-spmenu-right').on('click', function (e) {
        e.stopPropagation();
    });

//Parallax effects
$('#bg-paralax').parallax("50%", 0.3);
$('#testinomial').parallax("50%", 0.2);
$('.text-rotator').parallax("50%", 0.2);

// Flip Pricing Tables
jQuery(document).on('ready',function(){
	//hide the subtle gradient layer (.pricing-list > li::after) when pricing table has been scrolled to the end (mobile version only)
	checkScrolling($('.pricing-body'));
	$(window).on('resize', function(){
		window.requestAnimationFrame(function(){checkScrolling($('.pricing-body'))});
	});
	$('.pricing-body').on('scroll', function(){ 
		var selected = $(this);
		window.requestAnimationFrame(function(){checkScrolling(selected)});
	});
	function checkScrolling(tables){
		tables.each(function(){
			var table= $(this),
				totalTableWidth = parseInt(table.children('.pricing-features -5').width(), 10),
		 		tableViewport = parseInt(table.width(), 10);
			if( table.scrollLeft() >= totalTableWidth - tableViewport -1 ) {
				table.parent('li').addClass('is-ended');
			} else {
				table.parent('li').removeClass('is-ended');
				
			}
		});
	}
	
//switch from monthly to annual pricing tables
	bouncy_filter($('.pricing'));

	function bouncy_filter(container) {
		container.each(function(){
			var pricing_table = $(this);
			var filter_list_container = pricing_table.children('.pricing-switcher'),
				filter_radios = filter_list_container.find('input[type="radio"]'),
				pricing_table_wrapper = pricing_table.find('.pricing-wrapper');

			//store pricing table items
			var table_elements = {};
			filter_radios.each(function(){
				var filter_type = $(this).val();
				table_elements[filter_type] = pricing_table_wrapper.find('li[data-type="'+filter_type+'"]');
			});

			//detect input change event
			filter_radios.on('change', function(event){
				event.preventDefault();
				//detect which radio input item was checked
				var selected_filter = $(event.target).val();

				//give higher z-index to the pricing table items selected by the radio input
				show_selected_items(table_elements[selected_filter]);

				//rotate each pricing-wrapper 
				//at the end of the animation hide the not-selected pricing tables and rotate back the .pricing-wrapper
				
				if( !Modernizr.cssanimations ) {
					hide_not_selected_items(table_elements, selected_filter);
					pricing_table_wrapper.removeClass('is-switched');
				} else {
					pricing_table_wrapper.addClass('is-switched').eq(0).one('webkitAnimationEnd oanimationend msAnimationEnd animationend', function() {		
						hide_not_selected_items(table_elements, selected_filter);
						pricing_table_wrapper.removeClass('is-switched');
						//change rotation direction if .pricing-list has the .bounce-invert class
						if(pricing_table.find('.pricing-list').hasClass('bounce-invert')) pricing_table_wrapper.toggleClass('reverse-animation');
					});
				}
			});
		});
	}
	function show_selected_items(selected_elements) {
		selected_elements.addClass('is-selected');
	}
	function hide_not_selected_items(table_containers, filter) {
		$.each(table_containers, function(key, value){
	  		if ( key != filter ) {	
				$(this).removeClass('is-visible is-selected').addClass('is-hidden');

			} else {
				$(this).addClass('is-visible').removeClass('is-hidden is-selected');
			}
		});
	}
});
		 
//Contact Us
  $("#submit_message").on("click", function() {
		$('#reply_message').removeClass();
		$('#reply_message').html('')
		var regEx = "";
		
		// validate Name
		var name = $("input#name").val();
		regEx=/^[A-Za-z .'-]+$/;
		if (name == "" || name == "Name"  || !regEx.test(name)) {
			$("input#name").val('');
			$("input#name").focus();
			return false;
		}
		
		// validate Email
		var email = $("input#email").val();
		regEx=/^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;
		if (email == "" || email == "Email" || !regEx.test(email)) {
			$("input#email").val('');
			$("input#email").focus();
			return false;
		}
		
		// validate Subject
		var mysubject = $("input#mysubject").val();
		regEx=/^[A-Za-z0-9 .'-]+$/;
		if (mysubject == "" || mysubject == "Mysubject"  || !regEx.test(mysubject)) {
			$("input#mysubject").val('');
			$("input#mysubject").focus();
			return false;
		}
		
		// validate Message
		var mymessage = $("textarea#mymessage").val();
		if (mymessage == "" || mymessage == "Mymessage" || mymessage.length < 2) {
			$("textarea#mymessage").val('');
			$("textarea#mymessage").focus();
			return false;
		}
		
		var dataString = 'name='+ $("input#name").val() + '&email=' + $("input#email").val() + '&mysubject='+ $("input#mysubject").val() + '&mymessage=' + $("textarea#mymessage").val();
		
		$('.loading').fadeIn(500);
		
		// Send form data to mailer.php
		$.ajax({
			type: "POST",
			url: "php/sender.php",
			data: dataString,
			success: function() {
				$('.loading').hide();
				$('#reply_message').addClass('list3');
				$('#reply_message').html("<span class='text-success'>Mail sent successfully</span>")
				.fadeIn(1500);
				$('#form_contact')[0].reset();
				}
			});
		return false;
	});
//Initiat WOW JS
new WOW().init();
 
 
 
