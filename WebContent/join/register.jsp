<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC_BBS</title>
</head>
<body>

	<!-- top 레이아웃 삽입 -->
	<jsp:include page="/layout/topLayout.jsp" flush="false" />

	<!-- 회원가입 (페이지 직접 접속할 경우에도 세션에 로그인 값 있으면 안보여줌)  -->
	<%
		if (session.getAttribute("userID") == null) {
	%>

	<div class="container">
		<div class="row">
			<!-- 입력폼 그리드 -->
			<div class="col-lg-6">
				<form action="registerAsk" method="post">
					<!--  회원정보 입력 -->
					<div class="input-group mt-3 b-1">
						<div class="input-group-prpend">
							<span class="input-group-text">ID</span>
						</div>
						<input type="text" name="userID" class="form-control"
							placeholder="input ID" required
						>
					</div>
					<div class="input-group mt-1 mb-1">
						<div class="input-group-prpend">
							<span class="input-group-text">패스워드</span>
						</div>
						<input type="password" name="userPW" class="form-control"
							placeholder="input PW" required
						>
					</div>
					<div class="input-group mb-1">
						<div class="input-group-prpend">
							<span class="input-group-text">패스워드 확인</span>
						</div>
						<input type="password" name="userPW2" class="form-control"
							placeholder="input PW" required
						>
					</div>
					<div class="input-group mb-1">
						<div class="input-group-prpend">
							<span class="input-group-text">이름</span>
						</div>
						<input type="text" name="userName" class="form-control"
							placeholder="input userName" required
						>
					</div>
					<div class="input-group mb-1">
						<div class="input-group-prpend">
							<span class="input-group-text">이메일</span>
						</div>
						<input type="text" name="userEmail" class="form-control"
							placeholder="input Email" required
						>
					</div>
					<div class="input-group mb-1">
						<div class="input-group-prpend">
							<span class="input-group-text">전화번호</span>
						</div>
						<input type="text" name="userPhone" class="form-control"
							placeholder="input userPhone" required
						>
					</div>
					<div class="input-group mb-1">

						<div class="input-group-prpend">
							<span class="input-group-text">성별</span>
						</div>
						<input type="text" name="userGender" class="form-control" 
						placeholder="input men or women" required>
					</div>

					<button type="submit" class="btn btn-dark btn-sm btn-block my-2">
						회원가입 하기</button>
				</form>
			</div>
		</div>
	</div>


	<!-- 
	<p>
	<form action="registerAsk" method="post">
		ID :
		<input type="text" name="userID" size="10" required />
		<br> 패스워드 :
		<input type="password" name="userPW" size="12" required />
		<br> 패스워드 확인 :
		<input type="password" name="userPW2" size="12" required />
		<br> 이름 :
		<input type="text" name="userName" size="10" required />
		<br> 이메일 :
		<input type="text" name="userEmail" size="30" required />
		<br> 전화번호 :
		<input type="text" name="userPhone" size="15" required />
		<br> 성별 :
		<input type="radio" name="userGender" value="men" required />
		남
		<input type="radio" name="userGender" value="women">
		여<br>
		<input type="submit" value="가입하기">
	</form>
	</p>	 -->

	<%
		}
	// 회원가입 체크에서 실패 했을 경우 실패 메세지를 받아서 출력해줌
	Object obj = session.getAttribute("formMsg");
	if (obj != null) {
	String msg = (String) obj;
	%>
	<div class="alert alert-danger text-center" role="alert"><%=msg%></div>
	<%
		session.removeAttribute("formMsg");
	}
	%>
	<!-- bottom 레이아웃 삽입 -->
	<jsp:include page="/layout/bottomLayout.jsp" flush="false" />
</body>
</html>