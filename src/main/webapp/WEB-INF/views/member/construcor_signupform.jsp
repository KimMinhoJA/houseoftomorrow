<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ȸ������ ��</title>
    
    <link rel="stylesheet" href="/plugins/bootstrap/bootstrap.min.css">

    <script src="/plugins/jquery/jquery-3.4.1.min.js"></script>
	<script src="/plugins/bootstrap/bootstrap.min.js"></script>
   <!--  <link rel="stylesheet" type="text/css" href="/board.css"> -->
   
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
	<div class="container" style="background-color:black;">
		<div class="row">
		 <form class="row" enctype="multipart/form-data" action="/signup" method="POST" style="background-color:yellow;">
				<div class="form-group col-md-12">
				<h1>ȸ�� ����</h1>
				</div>
				<div class="form-group col-md-12">
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
                <div class="form-group col-md-6">
                    <label for="password">��й�ȣ</label> 
                    <input type="password" class="form-control" id="password" placeholder="��й�ȣ" value="" required name="user-password">
                    <div class="invalid-feedback">��ȿ�� ��й�ȣ�� �ʿ��մϴ�.</div>
                </div>


                <div class="form-group col-md-6">
                    <label for="password">��й�ȣ Ȯ��</label> 
                    <input type="password" class="form-control" id="real-name" placeholder="��й�ȣ Ȯ��" value="" required name="user-password">
                    <div class="invalid-feedback">��ȿ�� ��й�ȣ�� �ʿ��մϴ�.</div>
                </div>
           

                <div class="form-group col-md-6">
                    <label for="nickname">����</label> 
                    <input type="text" class="form-control" id="nickname" placeholder="����(2��-15��)" required name="nickname">
                    <div class="invalid-feedback">�����ϴ� ������ �Է��ϼ���.</div>
                </div>			
				<div class="form-group col-md-12">
				<h1>�ð��� ���� �Է�</h1>
				</div>
				<div class="col-md-6">
					<label for="con_name">�ð����</label> 
                    <input type="text" class="form-control" id="con_name" placeholder="�ð����" name="con_name" required>
				</div>
				
				<div class="col-md-6">
					<label for="con_phone">�ð��� ����ó</label> 
                    <input type="text" class="form-control" id="con_phone" placeholder="xxx-xxxx-xxxx" name="con_phone" required>
				</div>
				
				<div class="col-md-6">
					<label for="con_career">��»���</label> 
                    <input type="text" class="form-control" id="con_career" placeholder="�Ⱓ�� �Է����ּ���" name="con_career" required>
				</div>
				
				<div class="col-md-6">
					<label for="con_isCompany">���ü ����</label> 
                    <input type="text" class="form-control" id="con_isCompany" placeholder="xxx-xxxx-xxxx" name="con_isCompany" required>
				</div>
				</form>
		</div>
	</div>




    
				
				<<!-- div class="mb-3">
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

                <footer th:replace="/fragments/semantic :: footer"></footer> -->
            </form>
            </div>
        </div>

    </div>

</body>

</html>