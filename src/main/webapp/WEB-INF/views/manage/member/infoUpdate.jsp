<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ȸ���������� ��</title>
    <link rel="stylesheet" type="text/css" href="/plugins/css/bootstrap.css">
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
	
	
	
	/* 	$("button[name=delete]").click(function(){
		confirm("���� Ż���Ͻðڽ��ϱ� ?");
		var pwd = prompt("��й�ȣ�� �Է��ϼ���", "��й�ȣ�Է¶�");
		var id = $("#id").val();
		location = "note?command=userWithdraw&password="+pwd+"&id="+id;
		
	}); */
	
}
   
</script>

   
</head>

<body>
    <div class="container">
        <div class="py-5 text-left">
           
            <h2>��������</h2>
            <button type="button" name="delete">Ż��</button>
         
        </div>

        <div class="col-md-12 order-md-1">
            
            <form class="needs-validation" novalidate action="/signup" method="POST">


                <div class="mb-3">
                    <label for="email">�̸���</label>

                    <div class="input-group">
                        <div class="input-group-prepend">
                        	<input type="text" class="form-control"> @
                        	
                        	<input type="text" id="aaa" class="form-control" style="display: none;">
                        	<select id="mailselect" onchange="myFunction()" style="display: inline-block;">
                        		<option>email</option>
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
                        <div class="invalid-feedback" style="width: 100%;"></div>
                    </div>
                </div>
                
                <div class="mb-3">
                    <label for="nickname">�̸�</label> 
                    <input type="text" class="form-control" id="nickname" placeholder="�̸�" required name="nickname">
                    
                </div>
                
                <div class="mb-3">
                    <label for="password">����й�ȣ</label> 
                    <input type="password" class="form-control" id="password" placeholder="��й�ȣ 6�ڸ� �̻�" value="" required name="user-password">
                </div>


                <div class="mb-3">
                    <label for="password">��й�ȣ Ȯ��</label> 
                    <input type="password" class="form-control" id="real-name" placeholder="��й�ȣ Ȯ��" value="" required name="user-password">
                </div>
                
                <div class="mb-3">
                    <label for="phone">����ȣ</label>
                    <input type="text" class="form-control" id="phone" placeholder="010-0000-0000" required name="user-phone">
                </div> 	
		
               
                
		
				
				
                <hr class="mb-4">
                <button class="btn btn-primary btn-lg btn-block" type="submit">ȸ������ ����</button>
               	<button type="button" name="back">ó������</button>
                <hr class="mb-4">
                
             

                <footer th:replace="/fragments/semantic :: footer"></footer>
            </form>
        </div>

    </div>

</body>

</html>