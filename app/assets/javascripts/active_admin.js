//= require active_admin/base
//= require rich
$(document).ready(function() {
	$("#subject_id").change(function() {
		var id = $(this).val();
		
		$.ajax ({
			type: "POST",
			url: "/ajax/make_ajax_category",
			data: {id: id},
			cache: false,
			success: function(html) {
				$("#question_category_id, #exam_category_id").html(html);
			}
		});
	});
});

$(document).ready(function() {
	var id = 1
	var arr_num = new Array();
	
	$("#add_new_answer").click(function() {

		id += 1;
		
		var answer_name = "answer" + id;
		var link_answer_name = "link_answer" + id;
		var name = "mark_type" + id;
		var t_name = "content" + id;

		$("#answer").append("<br /><br /><div id='" + answer_name + "'><label class=' label'>Answer<abbr title='required'>*</abbr></label>" +
			"<textarea class=\"answer_content\" rows='10' name='answer[][content]'></textarea>&nbsp;&nbsp;" + 
				"<a href='javascript:void(0);' id='" + link_answer_name + "'>Remove this answer</a><br />" +
				"<input class=\"rad_answer\" type='radio' name='answer_rad[][" + name + "]' value='0' checked='true' />&nbsp;Incorrect&nbsp;&nbsp;" +
				"<input type='radio' name='answer_rad[][" + name + "]' value='1' />&nbsp;Correct&nbsp;<br />");

	});

	$("#question_type_question").change(function() {
		$('#answer').html("");
		var id = $(this).val();
		if (id == "Single choice" || id == "Multiple choices") {
			$('#answer').html("<br /><label class='' label'>Answer<abbr title='required'>*</abbr></label>" +
			"<textarea class=\"answer_content\" rows='10' name='answer[][content]'></textarea><br />" +
				"<input class=\"rad_answer\" type='radio' name='answer_rad[][mark_type1]' value='0' checked='true' />&nbsp;Incorrect&nbsp;&nbsp;" +
				"<input type='radio' name='answer_rad[][mark_type1]' value='1' />&nbsp;Correct<br />");
			$('#add_new_answer').removeClass('hide-add-answer');
		} else if (id == "Open answer") {
			$('#answer').html("<label class='' label'>Answer<abbr title='required'>*</abbr></label>" +
				"<textarea class='answer_content' rows='10' name='answer[][content]'></textarea><br />");
			$('#add_new_answer').addClass('hide-add-answer');
		}
	});

	$("a[id^=link_answer]").live("click", function() {
		$(this).parent().remove();
			
	});
});

$(document).ready(function(){
	var password;
	var link;
	var email;
	var userId;
	var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	$(".id_name").focus(function(){
    	$(this).css("background-color","#cccccc");
  	});
  	$(".id_name").blur(function(){
    	$(this).css("background-color","#ffffff");
  	});
	$(".id_name").change (function(){
		email = $(this).val();
		pass_link = $(this).attr("label");
		if (regex.test(email)) {
			$(this).replaceWith('<a href="javascript:void()" class="cd" label='+pass_link+'>'+email+'</a>');      
			arr = pass_link.split("-");
			password = arr[0];
			link = arr[1];
			userId = arr[2];
			//alert(password+"-"+link+"-"+userId);
			$.ajax ({
				type: "POST",
				url: "/mail/insertMail",
				data: {email: email, user_id: userId},
				success: function(html) {
					alert("Insert successful!");
				}
			});
		} else {
			alert("No validates email!");
		}
	});

	$(".cd").live('click', function(){
		email = $(this).text();
		pass_link = $(this).attr("label");
		arr = pass_link.split("-");
		password = arr[0];
		link = arr[1];
		userId = arr[2];
		//alert(email);
		//alert(password+"-"+link+"-"+userId);
		$.ajax ({
			type: "POST",
			url: "/mail/sendMail",
			data: {email: email, password: password, link: link},
			success: function(html) {
				alert(password + "-" + email + "-" + link);
				//$("#page_title").html(html);
			}				
		}); 	      		         
	});
});

//Send mail from value database
// $(document).ready(function(){
// 	var pw, li, em, ui;
// 	$(".class_email").click (function(){
// 		//alert("Start!");
// 		em=$(this).text();
// 		pl=$(this).attr("label");
// 		arr=pl.split("-");
// 		pw=arr[0];
// 		li=arr[1];
// 		ui=arr[2];
// 		alert(em);
// 		$.ajax ({
// 			type: "POST",
// 			url: "/mail/sendMail",
// 			data: {e: em, p: pw, l: li},
// 			success: function(html) {
// 				alert(pw + "-" + em + "- " + li);
// 			}
// 		});
// 	});
// });