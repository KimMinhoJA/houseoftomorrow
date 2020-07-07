<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ȸ������ ��</title>
    <!-- bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main/animate.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main/owl.carousel.min.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main/jquery.fancybox.min.css">

  <!-- Theme Style -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common/common.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main/main.css">

  
  <!-- WebFont -->
  
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;900&display=swap" rel="stylesheet">

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
            
            <form class="needs-validation"  action="/signup" method="POST">


                <div class="mb-3">
                    <label for="email">�̸��� (email)</label>
                    <p>8�� �̻� �Է����ּ���.</p>
                    <div class="input-group">
                        <div class="input-group-prepend">
                        	<input type="text" class="form-control"> @
                        	
                        	<input type="text" id="aaa" class="form-control" style="display: none;">
                        	<select id="mailselect" onchange="myFunction()" style="display: inline-block;">
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
                    <!--     <input type="text" class="form-control" id="username" placeholder="Username" required name="user-id"> -->
                        <div class="invalid-feedback" style="width: 100%;">Your username is required.</div>
                    </div>
                </div>
                
                <div class="mb-3">
                    <label for="password">��й�ȣ</label> 
                    <input type="password" class="form-control" id="password" placeholder="��й�ȣ" value="" required name="user-password">
                    <div class="invalid-feedback">��ȿ�� ��й�ȣ�� �ʿ��մϴ�.</div>
                </div>


                <div class="mb-3">
                    <label for="password">��й�ȣ Ȯ��</label> 
                    <input type="password" class="form-control" id="real-name" placeholder="��й�ȣ Ȯ��" value="" required name="user-password">
                    <div class="invalid-feedback">��ȿ�� ��й�ȣ�� �ʿ��մϴ�.</div>
                </div>
           

                <div class="mb-3">
                    <label for="nickname">����</label> 
                    <input type="text" class="form-control" id="nickname" placeholder="����(2��-15��)" required name="nickname">
                    <div class="invalid-feedback">�����ϴ� ������ �Է��ϼ���.</div>
                </div>
				
				
				<div class="mb-3">
					<label for="agree">�������</label>
					
					<table class="table table-border">
						<td>
							 <hr>	
							 <input type="checkbox" id="" value="option1"> ��ü���� <br>
							 <hr>	
							 <input type="checkbox" id="" value="option2"> �� 14�� �̻��Դϴ�.(�ʼ�)) <br>
							 <input type="checkbox" id="" value="option3"> �̿���(�ʼ�) <br>
							 <input type="checkbox" id="" value="option4"> ��������ó����ħ(�ʼ�) <br>
							 <input type="checkbox" id="" value="option5"> �̺�Ʈ, ���θ�� �˸� ���� �� SMS ����(����) <br>
						</td>
					
					</table>
					
				</div>
				
				
				
                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">ȸ������ �Ϸ�</button>
                <hr class="mb-4">

                <footer th:replace="/fragments/semantic :: footer"></footer>
            </form>
        </div>

    </div>

</body>

</html>