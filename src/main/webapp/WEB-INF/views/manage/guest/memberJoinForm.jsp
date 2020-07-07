<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ȸ������ ��</title>
<script src="/plugins/jquery/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="/plugins/bootstrap/bootstrap.min.css">
<script src="/plugins/bootstrap/bootstrap.min.js"></script>

<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
<script>
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content"); 
		$(document).ajaxSend(function(e, xhr, options) {
		  xhr.setRequestHeader(header, token);
		});
	</script>
	<script>
		var pwdCheck = false;
		var idCheck = false;
		var phoneCheck = false;
		function isEmail(asValue) {
	
			var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
	
			return regExp.test(asValue); // ���Ŀ� �´� ��� true ����	
	
		}
		// �ڵ��� ��ȣ üũ ���Խ�
	
		function isCelluar(asValue) {
			var regExp = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
			return regExp.test(asValue); // ���Ŀ� �´� ��� true ����
	
		}
		
		$(function(){
			$('#dupCheck').click(function(){//idüũ
				if(!isEmail($('#memberId').val())){
					alert("�ùٸ��� ���� �̸��� �����Դϴ�.");
					return false;
				}
				$.ajax({
					url: "/idCheck",
					type: "post",
					dataType: "text",
					data: {
						memberId : $('#memberId').val()
					},
					success: function(response){
						if(response == "possible"){
							idCheck=true;
							alert("��� ������ ���̵� �Դϴ�.");
						}else{
							alert("�ߺ��� ���̵� �Դϴ�.");
						}
					},
					error: function(e){
						alert(e);
					}
				});
			});
	
			$('#phoneCheck').click(function(){//�� ��ȣ üũ
				if(!isCelluar($('#phone').val())){
					alert("�ùٸ��� ���� �ڵ��� ��ȣ�Դϴ�.");
					return false;
				}
				$.ajax({
					url: "/phoneCheck",
					type: "post",
					dataType: "text",
					data: {
						memberPhone : $('#phone').val()
					},
					success: function(response){
						if(response == "possible"){
							phoneCheck=true;
							alert("��� ������ �ڵ��� ��ȣ �Դϴ�.");
						}else{
							alert("�̹� ������� �ڵ��� ��ȣ �Դϴ�.");
						}
					},
					error: function(e){
						alert(e);
					}
				});
			});
	
			$('#passwordCheck').keyup(function(){//��й�ȣ üũ
				if($('#password').val() == $(this).val()){
					$('span.checkSpan').hide();
					pwdCheck = true;
				}else{
					$('span.checkSpan').show();
					pwdCheck = false;
				}
			});
			
			$('#memberId').keyup(function(){
				idCheck=false;
			});
			
			$('#password').keyup(function(){
				if($('#passwordCheck').val() == $(this).val()){
					$('span.checkSpan').hide();
					pwdCheck = true;
				}else{
					$('span.checkSpan').show();
					pwdCheck = false;
				}
			});
			
			$('#phone').keyup(function(){
				phoneCheck=false;
			})
			
			$('#signupBtn').click(function(){
				if($('#memberId').val()==""){
					alert('id�� Ȯ���Ͻÿ�.');
					return false;
				}
				if($('#username').val()==""){
					alert('�̸��� Ȯ���Ͻÿ�.');
					return false;
				}
				if($('#password').val()==""){
					alert('��й�ȣ�� Ȯ���Ͻÿ�.');
					return false;
				}
				if($('#passwordCheck').val()==""){
					alert('��й�ȣ�� Ȯ���Ͻÿ�.');
					return false;
				}
				if($('#phone').val()==""){
					alert('��ȭ��ȣ�� Ȯ���Ͻÿ�.');
					return false;
				}
				if(!(idCheck && phoneCheck && pwdCheck)){
					if(!idCheck){
						alert("id�� Ȯ���� �ּ���.");
					}else if(!phoneCheck){
						alert("��ȭ��ȣ�� Ȯ���� �ּ���.");
					}else if(!pwdCheck){
						alert("��й�ȣ�� Ȯ���� �ּ���.");
					}
					return false;
				}
			});
			
		});
	</script>
<style>
	.checkSpan{
		color : red;
		display : none;
	}
</style>
</head>

<body>
	<div class="container">
		<div class="py-5 text-left">
			<h2>ȸ������</h2>
		</div>
		<div class="col-md-12 order-md-1">
			<form class="needs-validation" novalidate action="/signup" method="POST">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"> 
				<input type="hidden" name="memberRoleNo" value="1">
				<div class="mb-3">
					<label for="email">�̸���</label>
					<input type="text" id="memberId" name="memberId" class="form-control" placeholder="email (id@domain)">
					<input type="button" id="dupCheck" value="�ߺ� üũ">
				</div>
				<input type="hidden">
				<div class="mb-3">
					<label for="username">�̸�</label> 
					<input type="text" class="form-control" id="username" placeholder="Username" required name="memberName">
				</div>

				<div class="mb-3">
					<label for="password">��й�ȣ</label> 
					<input type="password" class="form-control" id="password" placeholder="��й�ȣ" value="" required name="memberPwd">
				</div>


				<div class="mb-3">
					<label for="password">��й�ȣ Ȯ��</label> 
					<input type="password" class="form-control" id="passwordCheck" placeholder="��й�ȣ Ȯ��" value="" required name="memberPwdCheck"> 
					<span class="checkSpan">��й�ȣ�� ��ġ���� �ʽ��ϴ�.</span>
				</div>

				<div class="mb-3">
					<label for="phone">��ȭ��ȣ</label> 
					<input type="text" class="form-control" id="phone" placeholder="��ȭ��ȣ (010-0000-0000)" value="" required name="memberPhone"> 
					<input type="button" id="phoneCheck" value="�����ϱ�">
				</div>
				

				<!-- 				<div class="mb-3"> -->
				<!-- 					<label for="agree">�������</label> -->
				<!-- 					<table class="table table-border"> -->
				<!-- 						<td> -->
				<!-- 							 <hr>	 -->
				<!-- 							 <input type="checkbox" id="" value="option1"> ��ü���� <br> -->
				<!-- 							 <hr>	 -->
				<!-- 							 <input type="checkbox" id="" value="option2"> �� 14�� �̻��Դϴ�.(�ʼ�)) <br> -->
				<!-- 							 <input type="checkbox" id="" value="option3"> �̿���(�ʼ�) <br> -->
				<!-- 							 <input type="checkbox" id="" value="option4"> ��������ó����ħ(�ʼ�) <br> -->
				<!-- 							 <input type="checkbox" id="" value="option5"> �̺�Ʈ, ���θ�� �˸� ���� �� SMS ����(����) <br> -->
				<!-- 						</td> -->
				<!-- 					</table> -->
				<!-- 				</div> -->

				<hr class="mb-4">
				<button class="btn btn-primary btn-lg btn-block" id="signupBtn" type="submit">ȸ������</button>
				<hr class="mb-4">
			</form>
		</div>
	</div>
</body>

</html>