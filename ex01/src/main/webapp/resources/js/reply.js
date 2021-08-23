/**
*
*/
$(document).ready(function(){
	//alert("aaa");
	// get.jsp에 있는
	// bno 값 가져오기
	var bno = $('#bno').val();
	
	showList();
	function showList(){
		replyService.getList(
				{bno : bno},
				function(list){
					var str = ""; // 지역 변수 선언
					for(var i = 0; i < list.length||0; i++){
//						console.log(list[i]);
//						console.log(list[0].rno);
//						console.log(list[1].rno);
//						str += "<li>" + list[i].rno + "</li>"
						str += "<li> 작성자 : " + list[i].replyer + "</li>"
						str += "<li><textarea rows='3' cols='30' id='modreply"+list[i].rno+"'>" + list[i].reply + "</textarea></li>"
						str += "<li> 작성시간 : " + list[i].replydate + "</li>"
						str += "<li> 수정시간 : " + list[i].updatedate + "</li>"
						str += "<li><button class='replymodify' data-rno='"+list[i].rno+"'>댓글 수정</button>&nbsp;" +
								"<button class='replyremove' data-rno='"+list[i].rno+"'>댓글 삭제</button></li>"
					}
//					$("#replyList").html("목록리스트 뿌리기")
					$("#replyList").html(str)
				}
		)
	}
	$("#replyadd").click(function(e){
			
			// reply값 가져오기
			var reply = $('#reply').val();
	//		alert(reply);
	//		alert(bno);
			
			// replyer 값 가져오기
	//		replyService.add({reply:"aaa", replyer:"bbbb", bno:1}, function(result){alert("cccccc");});
			replyService.add(
					{reply:reply, replyer:"bbbb", bno:bno},
					
					function(result){
						alert("결과는 : " + result);
						showList();
					}
		);
	});
	// 수정 버튼
	$('#replyList').on("click", ".replymodify", function(e){
		var rno = $(this).data("rno"); // this로 각각 rno 선택 위치를 가져옴
		var reply = $("#modreply" + rno).val();
		alert("댓글 수정 번호 : " + rno);
		replyService.update(
				{rno:rno, reply:reply},
				function(result){	// update가 정상적으로 처리된 후 작업(callback)
					alert("수정 완료..." + result);
					showList();
				}
		);
	});
	// 삭제 버튼
	$('#replyList').on("click", ".replyremove", function(e){
		var rno = $(this).data("rno");
		alert("댓글 삭제 번호 : " + rno);
		replyService.remove(
				rno,
				function(deleteResult){	// delete가 정상적으로 처리된 후 작업(callback)
					alert("삭제 완료..." + deleteResult);
					showList();
				}
		);
	});
	
})

var replyService=(function(){
	function add(reply, callback, error){// add함수 시작
		//alert("aaaaa");
		console.log("add reply");
		$.ajax({
			type:"post",
			url:"/replies/new",	// ReplyController 연결부분
			data:JSON.stringify(reply),
			contentType:"application/json; charset=utf-8",
			success:function(result, status, xhr){
				alert(result);
				if(callback){
					callback(result);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		})	
	}// add 함수 끝
	function getList(param, callback, error){// getList 함수 시작(댓글 목록 리스트)
		var bno = param.bno;
		$.getJSON("/replies/page/" + bno + ".json",
				function(data){
				if(callback){
					callback(data);
				}
			}).fail(function(xhr,status,er){ 
				if(error){
					error(er);
				}
			});
		}// getList 함수 끝
	function update(reply, callback, error){
		$.ajax({
			type:"put",
			url:"/replies/" + reply.rno,
			data:JSON.stringify(reply),
			contentType:"application/json; charset=utf-8",
			success:function(result, status, xhr){
				alert(result);
				if(callback){
					callback(result);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	function remove(rno, callback, error){
		$.ajax({
			type:"delete",
			url:"/replies/" + rno,
			success:function(deleteResult, status, xhr){
				if(callback){
					callback(deleteResult);
				}
			},
			error : function(xhr,status,er){
				if(error){
					error(er);
				}
			}
		});
	}
		
		return{
			add : add,
			getList : getList,
			update : update,
			remove : remove
		};
})();