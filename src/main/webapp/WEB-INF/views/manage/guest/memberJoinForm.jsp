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
<script>

function myFunction(){
	var obj = document.getElementById('mailselect');
	var obj2 = document.getElementById('aaa');
	if(obj.value==='person'){
		obj2.style.display = 'inline-block';
	} else {
		obj.style.display = 'inline-block';
		obj2.style.display = 'none';
	}
	
	
	
}
   
</script>
   
</head>

<body>
    <div class="container">
        <div class="py-5 text-left">
           
            <h2>ȸ������</h2>
         <!--  <p class="lead">ȸ�������ϼ���. �����ϸ� �Խ����� ������ �� �ֽ��ϴ�.</p> -->
        </div>

        <div class="col-md-12 order-md-1">
            
            <form class="needs-validation" novalidate action="/signup" method="POST">
            	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            	<input type="hidden" name="memberRoleNo" value="1">
                <div class="mb-3">
                    <label for="email">�̸���</label>
                    <div class="input-group">
                        <div class="input-group-prepend">
                        	<input type="text" name="memberId" class="form-control"> @
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
                    <input type="password" class="form-control" id="real-name" placeholder="��й�ȣ Ȯ��" value="" required name="memberPwdCheck">
                </div>
                
                <div class="mb-3">
                    <label for="phone">��ȭ��ȣ</label> 
                    <input type="text" class="form-control" id="phone" placeholder="��ȭ��ȣ" value="" required name="memberPhone">
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
                <button class="btn btn-primary btn-lg btn-block" type="submit">ȸ������</button>
                <hr class="mb-4">
            </form>
        </div>
    </div>
</body>

</html>