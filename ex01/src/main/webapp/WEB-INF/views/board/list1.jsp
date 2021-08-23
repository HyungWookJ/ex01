<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글목록</title>

<!-- Custom fonts for this template -->
<link href="../resources/css/all.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../resources/css/sb-admin-2.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="../resources/css/dataTables.bootstrap4.css" rel="stylesheet">

</head>
<body>
	<div id="wrap">
		<table class="table table-bordered" id="dataTable">
			<thead>
				<tr>
					<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="board">
					<tr>
						<td>${board.bno }</td>
						<td><a href="get?bno=${board.bno }">${board.title }
						<b>[<c:out value="${board.replyCnt }"/>]</b>
						</a></td>
						<td>${board.writer }</td>
						<td>${board.regdate }</td>
					</tr>
				</c:forEach> <!-- for문을 사용할 수도 있다. -->
			</tbody>
		</table>
			<ul class="pagination">
				<c:if test="${ pageMaker.prev}">
					<li class="paginate_button privious page-item">
						<a href="list?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}" class="page-link">Previous</a>
					</li>
				</c:if>
				
				<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
					<li class="paginate_button ${pageMaker.cri.pageNum == num ? 'active':'' } page-item">
						<c:choose>
							<c:when test="${pageMaker.cri.type != null && pageMaker.cri.keyword != null}">
								<a href="list?pageNum=${num}&amount=${pageMaker.cri.amount}&type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword}"
								class="page-link">${num }</a>
							</c:when>
							<c:otherwise>
							<a href="list?pageNum=${num}&amount=${pageMaker.cri.amount}" class="page-link">${num }</a>
							</c:otherwise>
						</c:choose>
					</li>
				</c:forEach>
				
				<c:if test="${ pageMaker.next}">
					<li class="paginate_button next page-item">
						<a href="list?pageNum=${pageMaker.endPage+1 }&amount=${pageMaker.cri.amount}" class="page-link">Next</a>
					</li>
				</c:if>
			</ul>
		<form action="list" method="get" id="searchForm">
 			<select name="type">
				<option value=""
					<c:out value="${pageMaker.cri.type==null?'selected' :'' }"/>
				>선택</option>
				<option value="TC"
					<c:out value="${pageMaker.cri.type eq 'TC'?'selected' :'' }"/>
				>제목 or 내용</option>
				<option value="TW"
					<c:out value="${pageMaker.cri.type eq 'TW'?'selected' :'' }"/>
				>제목 or 작성자</option>
				<option value="CW"
					<c:out value="${pageMaker.cri.type eq 'CW'?'selected' :'' }"/>
				>내용 or 작성자</option>
				<option value="TCW"
					<c:out value="${pageMaker.cri.type eq 'TCW'?'selected' :'' }"/>
				>제목 or 작성자 or 내용</option>
			</select>
			<input type="text" name="keyword" value="<c:out value='${pageMaker.cri.keyword }'/>"/>
			<input type="hidden" name="pageNum" value="<c:out value='1'/>"/>
			<input type="hidden" name="amount" value="<c:out value='${pageMaker.cri.amount}'/>"/>
			
			<input type="submit" value="검색" id="serchBtn">
		</form>
		<form id="actionForm" action="list" method="get">
			<input type="hidden" name="pageNum" value="<c:out value='${pageMaker.cri.pageNum}'/>"/>
			<input type="hidden" name="amount" value="<c:out value='${pageMaker.cri.amount}'/>"/>
			<input type="hidden" name="type" value="<c:out value='${pageMaker.cri.type }'/>"/>
			<input type="hidden" name="keyword" value="<c:out value='${pageMaker.cri.keyword }'/>"/>
		</form>
	</div>
	<script>
		var sel = document.querySelector('.paginate_button a');
		const serchBtn = document.querySelector('#serchBtn');
		sel.addEventListener("onclick", function(e){
			e.preventDefault();
			console.log('click');
			actionForm.find("input[name='pageNum']").val($this).attr("href");
			actionForm.submit();
		});
		
	</script>
</body>
</html>