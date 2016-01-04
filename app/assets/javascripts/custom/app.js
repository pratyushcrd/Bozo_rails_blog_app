
$(function() {
	var notice_text = $("#notice").text();
		if(notice_text.length > 0){
		toastr.info(notice_text);
	}
	var alert_text = $("#alert").text();
		if(alert_text.length > 0){
		toastr.warning(alert_text);
	}

});