<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function checkFrm() {
		if (document.frm1.id.value == "") {
			alert("id is null");
			return;
		}
		document.frm1.submit();
	}

	function checkFrm2() {
		//값에 대한 검사 : 브라우저 내부에서...
		if (document.frm1.id.value == "") {
			alert("ID가 없습니다.");
			return false; //onsubmit의 경우 return false를 줘야지 전달을 하지 않음!
		}
	}
</script>

</head>
<body>
	<h2>개인 정보 입력</h2>
	<form name="frm1" method="get" action="formout_ex03.jsp"
		onsubmit="return checkFrm2()">
		<!-- onsubmit : <input type="submit" /> 이 작동할때 검사-->
		이름 : <input type="text" name="name" value="타씨" /><br /> 아이디 : <input
			type="text" name="id" value="whdvy" /><br /> 패스워드 : <input
			type="password" name="password" value="123" /><br /> <br /> 성별: 남<input
			type="radio" name="gender" value="male"> 여<input type="radio"
			name="gender" value="female"><br /> <br /> 메일 수신 여부1 : <br />
		공지메일<input type="checkbox" name="inotice" value="공지" /> 광고메일<input
			type="checkbox" name="cnotice" value="광고" /> 배송 확인 메일<input
			type="checkbox" name="dnotice" value="배송확인" /><br /> <br /> 메일 수신
		여부2 : <br /> 공지메일<input type="checkbox" name="notice" value="공지" />
		광고메일<input type="checkbox" name="notice" value="광고" /> 배송 확인 메일<input
			type="checkbox" name="notice" value="배송확인" /><br /> <br /> 직업 : <select
			name="job">
			<option value="1">학생</option>
			<option value="2">직장인</option>
			<option value="3">기타</option>
		</select><br /> <br /> <input type="submit" value="확인submit" /> <input
			type="button" value="확인button" onclick="checkFrm()"> <input
			type="reset" value="취소" />
	</form>


</body>
</html>