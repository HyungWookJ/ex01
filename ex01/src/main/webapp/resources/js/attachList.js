/**
 * 
 */
$(document).ready(function(){
	(function(){
		var bno = $("#bno").val();
		alert(bno);
		$.getJSON("/board/getAttachList", {bno: bno}, function(arr){
			console.log(arr);
			var str="";
			$(arr).each(function(i, attach){
				if(attach.filetype){
					var fileCallPath = encodeURIComponent(attach.uploadpath + "/s_" + attach.uuid + "_" + attach.filename);
					str += "<li data-path='" + attach.uploadpath + "' " +
					"data-uuid='" + attach.uuid + "' data-filename='" + attach.filename + "' data-type='" + attach.filetype + "'><div>";
					str += "<span>" + attach.filename + "</span>";
					str += "<img src='/display?fileName=" + fileCallPath + "'>";
					str += "</div></li>";
				}else{
					str += "<li data-path='" + attach.uploadpath + "' " +
					"data-uuid='" + attach.uuid + "' data-filename='" + attach.filename + "' data-type='" + attach.filetype + "'><div>";
					str += "<span>" + attach.filename + "</span>";
					str += "</div></li>";
				}
			});
			$(".uploadResult ul").html(str);
		});
		
	})()
})