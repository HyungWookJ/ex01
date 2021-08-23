/**
 * 
 */

$(document).ready(function(e){
	var formObj = $("form[role='form']");
	
	$("input[type='submit']").on("click", function(e){
		alert("글쓰기 클릭 확인");
		e.preventDefault();
		
		var str = "";
		$(".uploadResult ul li").each(function(i, obj){
			var jobj = $(obj);
			
			str += "<input type='text' name='attachList["+i+"].filename' value='"+jobj.data("filename")+"'>";
			str += "<input type='text' name='attachList["+i+"].uuid' value='"+jobj.data("uuid")+"'><br>";
			str += "<input type='text' name='attachList["+i+"].uploadpath' value='"+jobj.data("path")+"'>";
			str += "<input type='text' name='attachList["+i+"].filetype' value='"+jobj.data("type")+"'>";
			
		});
//		$(".uploadResult ul").html(str);
		formObj.append(str).submit();
		
	}); // click 이벤트 끝
	
	// 정규식(파일 확장자 첨부에 제약을 걸어줌 - 보안상)
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880;
	
	function checkExtension(filename, fileSize){
		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
		if(regex.test(filename)){
			alert("해당 종류의 파일은 업로드 할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	function showUploadResult(uploadResultArr){
		if(!uploadResultArr || uploadResultArr.length == 0){return;}
		
		var uploadUL = $(".uploadResult ul");
		
		var str = "";
		
		$(uploadResultArr).each(function(i, obj){
			// image type
			if(obj.filetype){
				var fileCallPath = encodeURIComponent(obj.uploadpath + "/s_" + obj.uuid + "_" + obj.filename);
				
				str += "<li data-path='" + obj.uploadpath + "' " +
						"data-uuid='" + obj.uuid + "' data-filename='" + obj.filename + "' data-type='" + obj.filetype + "'><div>";
				str += "<span>" + obj.filename + "</span>";
				str += "<button type='button' class='btn btn-warning btn-circle'><i class='fa fa-times'></i>닫기</button><br>";
				str += "<img src='/display?fileName=" + fileCallPath + "'>";
				str += "</div></li>";
			}else{
				var fileCallPath = encodeURIComponent(obj.uploadpath + "/" + obj.uuid + "_" + obj.filename);
				
				var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");
				
				str += "<li><div>";
				str += "<span>" + obj.filename + "</span>";
				str += "<button type='button' class='btn btn-warning btn-circle'><i class='fa fa-times'></i>닫기</button><br>";
				str += "</div></li>";
			}
		});
		uploadUL.append(str);
	}
	
	$("input[type='file']").change(function(e){
		alert("파일 체크");
		var formData = new FormData();
		
		var inputFile = $("input[name='uploadFile']");
		
		var files = inputFile[0].files;
		
		for(var i = 0; i < files.length; i++){
			
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}
			
			formData.append("uploadFile", files[i]);
			
		}
		
		$.ajax({
			url: "/uploadAjaxAction",
			processData: false,
			contentType: false,
			data: formData,
			type: 'POST',
			dataType: 'json',
			success: function(result){
				alert("Uploaded");
				showUploadResult(result);
			}
		}); // $.ajax
	})
	
});