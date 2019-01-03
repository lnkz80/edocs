$(function(){

	$(".lside li").click(function(){

		var obj = $(this);
		var actid = obj.attr("item-id");
		var ul = obj.parent();
		var ulid = ul.attr("id");
		var objects = "#" +ulid + " li";
		var colors = ["coral", "green", "purple", "brown", "navy"];

		$(objects).find($('span')).hide(200);
		
		if((ulid!="mnu1") && (ulid!="mnu3")){
			$(ul).find('.headerli').remove();
		}

		if(ulid!="mnu3"){
			nextulid = $(ul).next().attr("id");
			objectsnext = "#" + nextulid + " li";
			$(objectsnext).each(function(i, elem){
				if (obj.attr("item-id") == $(elem).attr("item-par")){
					$(elem).show();					
				}
				else{
					$(elem).hide();
				}				
			});

			$(ul).next().css("visibility", "visible");		
		}
			
		$(objects).each(function(i) {
            if ($(this).attr("item-id") == actid) {
                $(this).addClass('lside_mnu_active')
                    .find("img").attr({ "style": "background-color: " + colors[i] })
            } else {
                $(this).removeClass('lside_mnu_active')
                    .find("img").attr({ "style": "background-color: #999" })
					}
		});

		if(ulid == "mnu1"){			
			$(ul).next().find($('span')).show(200);
			// $(ul).next().find($('span')).show(200);
			
			$("#mnu2, #mnu3").find("li").removeClass('lside_mnu_active');
			$("#mnu2, #mnu3").find("img").attr({ "style": "background-color: #999"});
			
			// if($("#mnu2 li").hasClass("headerli") != true){
			// 	$("#mnu2 li:eq(0)").before('<li class="headerli"><span>Активы</span></li>');				
			// }

			// obj.addClass('lside_mnu_active');			
			$("#mnu3").css("visibility", "hidden");
		}

		// if (ulid == "mnu2"){
		// 	$("#mnu3").find("li").removeClass('lside_mnu_active');
		// }
		
		// console.log(ulid);
	});

// 	$("#mnu1 li").click(function() {
//         var spans = $('span');
//         var clobj = $(this);
//         var actId = clobj.attr("item-id");
//         var colors = ["coral", "green", "purple", "brown"];

//         $("#mnu1 li").find(spans).hide(200);

//         $("#mnu2").css("visibility", "visible");
//         $("#mnu1 li").each(function(i) {
//             if ($(this).attr("item-id") == actId) {
//                 $(this).addClass('lside_mnu_active')
//                     .find("img").attr({ "style": "background-color: " + colors[i] })
//             } else {
//                 $(this).removeClass('lside_mnu_active')
//                     .find("img").attr({ "style": "background-color: #999" })
// 					}
// 		});
// // console.log(clobj.attr("item-id"));
// 	});

});