<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>로그인</title>
<link href="<%=application.getContextPath()%>/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function chk() {
		System.out.println(form1.id.value);
		}
</script>
</head>
	<body>
		<h2>관리자 로그인</h2>
		<form method="post" action="" name="form1"	onsubmit="return chk()">
			<table width="300" align="center">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" maxlength="12"></td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="passwd" maxlength="12"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인" style="width: 100%;"></td>
				</tr>
			</table>
		</form>
	</body>
</html>