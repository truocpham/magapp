$(document).ready(function() {
	$("#subject_id").change(function() {
		var id = $(this).val();
		alert(id);
		
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
