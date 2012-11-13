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

		$("#answer").append("<div id='" + answer_name + "'><label class=' label'>Answer<abbr title='required'>*</abbr></label>" +
			"<textarea class=\"answer_content\" rows='10' name='answer[][content]'></textarea>&nbsp;&nbsp;" + 
				"<a href='javascript:void(0);' id='" + link_answer_name + "'>Remove this answer</a><br />" +
				"<input class=\"rad_answer\" type='radio' name='answer_rad[][" + name + "]' value='0' checked='true' />&nbsp;Incorrect&nbsp;&nbsp;" +
				"<input type='radio' name='answer_rad[][" + name + "]' value='1' />&nbsp;Correct&nbsp;<br />");

	});

	$("#question_type_question").change(function() {
		$('#answer').html("");
		var id = $(this).val();
		if (id == "One correct answer" || id == "More correct answers") {
			$('#answer').html("<label class='' label'>Answer<abbr title='required'>*</abbr></label>" +
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