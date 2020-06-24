<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ȸ������ ��</title>
    <script src="plugins/jquery/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  	
	<script src="plugins/bootstrap/bootstrap.min.js"></script>
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
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
	
	function myFunction(){
		var obj = document.getElementById('mailselect');
		var obj2 = document.getElementById('aaa');
		idCheck=false;
		if(obj.value==='person'){
			obj2.style.display = 'inline-block';
		} else {
			obj.style.display = 'inline-block';
			obj2.value = "";
			obj2.style.display = 'none';
		}
	}
	
	$(function(){
		$('#dupCheck').click(function(){//idüũ
			$.ajax({
				url: "/idCheck",
				type: "post",
				dataType: "text",
				data: {
					memberId : $('#memberId').val(),
					domain : $('#aaa').val(),
					domainAuto : $('#mailselect').val()
				},
				success: function(response){
					if(response == "possible"){
						idCheck=true;
					}
				},
				error: function(e){
					alert(e);
				}
			});
		});

		$('#phoneCheck').click(function(){//�� ��ȣ üũ
			$.ajax({
				url: "/phoneCheck",
				type: "post",
				dataType: "text",
				data: {
					memberPhone : $('#phone').val()
				},
				success: function(response){
					alert(response);
					if(response == "possible"){
						phoneCheck=true;
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
		
		$('#aaa').keyup(function(){
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
			if($('#mailselect').val()=="����"){
				alert('id�� Ȯ���Ͻÿ�.');
				return false;
			}
			if($('#mailselect').val()=="�����Է�"){
				if($('#aaa').val()==""){
					alert('id�� Ȯ���Ͻÿ�.');
					return false;
				}
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
		});
		
		$('#idRemember').change(function(){
			if($(this).prop("checked")){
				sessionStorage.setItem("id",$('#memberId').val());
			}else{
				sessionStorage.removeItem("id");
			}
		});
		
		$('#memberId').val(sessionStorage.getItem("id"));
		
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
					<div class="input-group">
						<div class="input-group-prepend">
							<input type="text" id="memberId" name="memberId" class="form-control"> 
							&nbsp;@&nbsp;
							<input type="text" id="aaa" name="domain" class="form-control" style="display: none;">
							<select id="mailselect" onchange="myFunction()" name="domainAuto" style="display: inline-block;">
								<option>����</option>
								<option>naver.com</option>
								<option>hanmail.com</option>
								<option>nate.com</option>
								<option>gmail.com</option>
								<option value="person">�����Է�</option>
							</select>
							<!-- <span class="input-group-text"></span>
                            <span class="input-group-text">@</span> -->
							&nbsp;&nbsp;&nbsp;&nbsp; 
							<input type="button" id="dupCheck" value="�ߺ�üũ">
						</div>
					</div>
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
					<input type="text" class="form-control" id="phone" placeholder="��ȭ��ȣ" value="" required name="memberPhone"> 
					<input type="button" id="phoneCheck" value="�����ϱ�">
				</div>
				
				<div class="mb-3">
					<input type="checkbox" id="idRemember"> id����ϱ�
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