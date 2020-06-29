<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
  <head>
    <title>TEST-HOT</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- bootstrap-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <!--ver3-->
  <!-- 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"> -->
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->

    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <link rel="stylesheet" type="text/css" href="./css/estimate-style.css">
     <link rel="stylesheet" href="css/star.css">
	<!-- WebFont -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;900&display=swap" rel="stylesheet">
<script>
	$(document).ready(function() {
		$('.dropdown').hover(function() {
  		$(this).find('.dd-wrap').css("display","block");
  		$(this).find('.dropdown-menu').css("display","block");
		}, function() {
  		$(this).find('.dd-wrap').css("display","none");
  		$(this).find('.dropdown-menu').css("display", "none");
		});//end

	}); //end
	
	$(function(){
		$('a.reviewupdate').click(function(){
			var content = $(this).parent().siblings('div.reviewcontent').find('pre').html();
			var $divcontent = $(this).parent().siblings('div.reviewcontent');
			$divcontent.empty();
			var divhtml = "";
		
			divhtml += '<div>����: <input type="radio" id="star5" name="grade" value="5"  checked><input type="radio" id="star4" name="grade" value="4">';
			divhtml += '<input type="radio" id="star3" name="grade" value="3"><input type="radio" id="star2" name="grade" value="2"><input type="radio" id="star1" name="grade" value="1">';
			
			$divcontent.append(divhtml);
			return false;
		});
		
	});

</script>
<style>

</style>

  </head>
  <body class="pt-6">
  <noscript>
  <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MK8DN2Q" height="0" width="0" style="display:none;visibility:hidden" allowfullscreen></iframe>
  </noscript>
    
    <header role="banner">
      <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
          <a class="navbar-brand " href="test.html">HOT</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
          <div class="collapse navbar-collapse btnCollapse" >
            <ul class="navbar-nav ">
            	<li class="nav-item dropdown pl-md-5">
		          <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown">Ŀ�´�Ƽ </a>
		         <div class="dd-wrap">
		          <ul class="dropdown-menu"  aria-labelledby="navbarDropdown">
		            <li><a class="dropdown-item" href="#" >Ŀ�´�ƼȨ</a></li>
		            <li><a class="dropdown-item" href="#">����</a></li>
		            <li><a class="dropdown-item" href="#">������</a></li>
		            <li><a class="dropdown-item" href="#">���Ͽ�</a></li>
		          </ul>
		          </div>
		        </li>

		        <li class="nav-item dropdown ">
		          <a href="#" class="nav-link dropdown-toggle" id="navbarDropdown" role="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown">���׸���ð�</a>
		          <div class="dd-wrap">
		          	<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			            <li><a class="dropdown-item" href="#">�ð�Ȩ</a></li>
			            <li><a class="dropdown-item" href="#">������û</a></li>
			            <li><a class="dropdown-item" href="#">������ã��</a></li>
			            <li><a class="dropdown-item" href="#">��Ʈ������</a></li>
		          </ul>
		          </div>
		        </li>

            </ul>

            <div class="navbar-nav ml-auto">
              <form method="post" class="search-form" >
                <span class="icon ion ion-search"></span>
                <input type="text" class="form-control col-sm-12" placeholder="Search...">
              </form>
              <button type="button" class="btn btn-outline-primary">�۾���</button>
              <div class="header_social_icon">
              	<!-- <span class="icon ion ion-bookmark-outline"></span>
              	<span class="icon ion ion-notifications-outline"></span>
              	<span class="icon ion ion-happy-outline"></span> -->
              	<ion-icon name="bookmark-outline" class="icon ion"></ion-icon>
              	<ion-icon name="notifications-outline" class="icon ion"></ion-icon>
              	<ion-icon name="happy-outline" class="icon ion mypage"></ion-icon>
              </div>
            </div>
            
          </div>
        </div>
      </nav>
    </header>
  <!-- END header -->
<div class="empty-space"></div>
<!-- ����������� �� ���κ� ��ġ���� ��������� -->
<!--�١ڡ١ڡ� ���������������������������������� ������� �������� ���������������������������������������� �ڡ١ڡ١�-->



<form class="expert-calculate" action="review">
<div class="expert-calculate__main-wrap container">
	<div class="expert-calculate__main row">
		
		

		<!--start ������-->
		<section class="expert-calculate__content col-12 col-md-7 col-lg-8">
				<div class="expert-calculate__content__header">
					<h1 class="expert-calculate__content__header__title">�ð� ������ ���� ����</h1>
					<button class="expert-reset-button" type="reset"><svg class="reset-icon" viewBox="0 0 20 20" width="20" height="20" preserveAspectRatio="xMidYMid meet"><path fill="#757575" fill-rule="nonzero" d="M15.4 8.78a6.52 6.52 0 1 0-1.8 5.83.74.74 0 0 1 1.06 1.05 8 8 0 1 1 2.12-7.56l.87-2.12a.75.75 0 0 1 1.39.57l-1.9 4.57-4.57-1.9a.75.75 0 1 1 .58-1.38l2.26.94z"></path></svg>�ʱ�ȭ</button>
				</div>
				
			
			<div>
			<div class="expert-user-form__form-group">
			<div class="expert-user-form__form-group__label"><h6>�ð� ������ ��ȣ / �۾��ڸ�</h6></div>
			<div class="expert-user-form__form-group__input">
			<div class="input-group telephone-input expert-review-form__telephone-input">
			<input type="constructionName" class="form-control name-input__input" size="1"  value="" >
			</div>
			</div>
			</div>
			</div>
<p>


<div class="expert-user-form__form-group">
<div class="expert-user-form__form-group__label"><h6>����Ƽ</h6></div>
<div class="expert-user-form__form-group__description">���������� �������ֽ� ���׸��� �ð��� ���� ����Ƽ�� ��������������?</div>
<div class="expert-user-form__form-group__input">

<div class="container">
         <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
            <input type="radio" id="star5" name="grade" value="5" /><label for="star5" title="5 star"></label>
            <input type="radio" id="star4" name="grade" value="4" /><label for="star4" title="4 star"></label>
            <input type="radio" id="star3" name="grade" value="3" /><label for="star3" title="3 star"></label>
            <input type="radio" id="star2" name="grade" value="2" /><label for="star2" title="2 star"></label>
            <input type="radio" id="star1" name="grade" value="1" /><label for="star1" title="1 star"></label>
        </div>
  </div>

</div>
</div>

<div class="expert-user-form__form-group">
<div class="expert-user-form__form-group__label"><h6>����</h6></div>
<div class="expert-user-form__form-group__description">���׸��� �ð� ���������� ���񽺿� �۾��� ���ݿ� ���Ͽ� ������ ������ ��Ź�帳�ϴ�.</div>
<div class="expert-user-form__form-group__input"><textarea style="min-height: 120px; height: 135.4px;" placeholder="ó�� ������ ģ���ϼ̰�, �۾��� �Ĳ��ϰ� ���ּ̾��. �ֺ� ������ ���غ��� ����Ƽ ��� ���ݵ� �ո����� ���̾����ϴ�. 5���� ���� �����µ� ������� ���ڴ� ����, A/S�� ����� �ּż� ���� ���� ������ �ֽ��ϴ�. �ֺ��� ��û ��õ�ϰ� �־��!" class="form-control text-area-input">
</textarea>
</div>
</div>
</div>

<div>
<div class="expert-user-form__form-group">
<div class="expert-user-form__form-group__label"><h6>�ð� ����</h6>
</div>
<div class="expert-user-form__form-group__description">�ð� ��/�� �̹��� Ȥ�� �ϼ� �̹����� �������ּ���!</div>
<div class="expert-user-form__form-group__input">
<div class="photo-input-wrap expert-review-form__photo-input">
<ul class="photo-input">

<button class="photo-input__upload__button" type="button">
<span class="content">
<svg class="icon" width="24" height="24" preserveAspectRatio="xMidYMid meet">

<path fill="#424242" fill-rule="nonzero" d="M6 4.9l1.2-3c.1-.3.4-.6.8-.6h8c.4 0 .7.3.8.6l1.2 3h5.1c.5 0 .9.4.9.9v16c0 .5-.4.9-.9.9H1a.9.9 0 0 1-.9-1v-16c0-.4.4-.8.9-.8h5zM12 19a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11z">
</path>
</svg>
<input type="file" name="file"  id="commImg" accept="image/gif, image/jpeg, image/png" ><p>
 

<div>���� �ø���</div>
</span>
</button>

</ul>
</div>
</div>
</div>
<div class="expert-user-form__form-group">
<div class="expert-user-form__form-group__label"><h6>�ð� ��༭ �߰�</h6>
</div>
<div class="expert-user-form__form-group__description">��༭ �� ������ ���� ���� �ð� ������ Ȯ���� �� �ִ� �ڷḦ ÷�����ּ���. (Ȯ�ο����θ� ���Ǹ� �ܺο� ����� ������� �ʽ��ϴ�.)</div>
<div class="expert-user-form__form-group__input">
<div class="file-input empty">
<input type="file" name="file"  id="commImg" accept="image/gif, image/jpeg, image/png" ><p>
</div>
</div>
</div>
</div>
						
			
						
			
<button class="expert-insert-button" type="submit"value="����ϱ�">
					<svg class="reset-icon" viewBox="0 0 10 10" width="20" height="20" preserveAspectRatio="xMidYMid meet">
					<path fill="#757575" fill-rule="nonzero"></path></svg>����ϱ�</button>
			


			




		</section><!--end section-->
	</div><!--end main row-->
</div>
</form><!--END form-->
<!--END papering ����-->


<!--�١ڡ١ڡ� ���������������������������������� ������� �������� ��������������������������������������� �ڡ١ڡ١�-->
<!-- ���������� �� �غκ� ��ġ���� ����������-->
<div class="empty-space"></div>
<!-- start footer -->
    <footer class="site-footer" role="contentinfo">
      <div class="container">
		<footer class="layout-footer">
			<div class="layout-footer__content">
				<div class="layout-footer__top row">
					<address class="layout-footer__cs col-8">
						<div class="layout-footer__cs__row ">
							<a class="layout-footer__cs__link" href="/customer_center">������<svg class="icon" aria-hidden="true" width="1em" height="1em" viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet"><path fill="currentColor" fill-rule="nonzero" d="M6 19.692L8.25 22 18 12 8.25 2 6 4.308 13.5 12z"></path></svg></a>
						</div>
						<div class="layout-footer__cs__row">
							<a class="layout-footer__cs__tel" href="tel:1670-0876">1670-0876</a>
						</div>
						<span class="layout-footer__cs__time">���� 10:00~17:00 (���ɽð� 12:00~13:00 / �ָ�&amp;������ ����)</span>
					</address>
					<div class="layout-footer__outbound col-4 right">
						<a class="layout-footer__outbound__item" href="https://itunes.apple.com/kr/app/oneul-uijib-intelieo-gong/id1008236892" target="_blank" rel="noreferrer noopener" title="�۽����" aria-label="�۽����"><svg class="icon" width="30" height="30" viewBox="0 0 30 30" preserveAspectRatio="xMidYMid meet"><path fill-rule="evenodd" d="M22.34 15.57a5.6 5.6 0 0 0 3.42 5.15c-.02.1-.53 1.84-1.78 3.62-1.05 1.57-2.15 3.1-3.9 3.13-1.69.04-2.26-1-4.2-1-1.96 0-2.57.97-4.2 1.04-1.65.06-2.92-1.67-4-3.23-2.18-3.17-3.87-8.93-1.6-12.85a6.23 6.23 0 0 1 5.24-3.2c1.66-.03 3.2 1.12 4.22 1.12 1 0 2.91-1.38 4.88-1.17.82.02 3.17.32 4.68 2.52-.13.08-2.8 1.64-2.76 4.87zm-3.2-9.48a4.8 4.8 0 0 1-3.8 1.8c-.18-1.46.54-3 1.34-3.95A5.81 5.81 0 0 1 20.44 2c.17 1.5-.43 3-1.3 4.09z"></path></svg></a>
						<a class="layout-footer__outbound__item" href="https://play.google.com/store/apps/details?id=net.bucketplace" target="_blank" rel="noreferrer noopener" title="�÷��̽����" aria-label="�÷��̽����"><svg class="icon" width="30" height="30" viewBox="0 0 30 30" preserveAspectRatio="xMidYMid meet"><path fill-rule="evenodd" d="M4.22 26.95A2.35 2.35 0 0 1 4 25.9V3.8c0-.42.08-.77.22-1.05l12.1 12.1-12.1 12.1zm.74.68l12.07-12.07 3.7 3.7-14.2 8.1c-.6.34-1.14.42-1.57.27zm15.78-17.2l-3.71 3.71L4.96 2.07c.14-.04.3-.07.45-.07.34 0 .72.1 1.12.34l14.2 8.1zm.9.52l4.32 2.46c1.39.8 1.39 2.09 0 2.88l-4.32 2.46-3.9-3.9 3.9-3.9z"></path></svg></a>
						<a class="layout-footer__outbound__item" href="https://story.kakao.com/ch/bucketplace" target="_blank" rel="noreferrer noopener" title="īī�����丮" aria-label="īī�����丮"><svg class="icon" width="30" height="30" viewBox="0 0 30 30" preserveAspectRatio="xMidYMid meet"><path fill="#757575" fill-rule="evenodd" d="M19.02 6h-8.04a.96.96 0 0 0-.98.93v8.16c0 .51.44.93.98.93h3.7c-.02.9-.4 1.9-.99 2.77a10.3 10.3 0 0 1-2 2.06l-.03.03c-.11.1-.2.22-.2.38 0 .12.07.21.14.31l.02.02 2.57 2.76s.13.12.23.15c.12.02.25.03.34-.04A12.25 12.25 0 0 0 20 14.79V6.93a.96.96 0 0 0-.98-.93"></path></svg></a>
						<a class="layout-footer__outbound__item" href="https://www.facebook.com/interiortoday" target="_blank" rel="noreferrer noopener" title="���̽���" aria-label="���̽���"><svg class="icon" width="30" height="30" viewBox="0 0 30 30" preserveAspectRatio="xMidYMid meet"><path fill="#757575" fill-rule="evenodd" d="M16.67 26V15H20v-3.38h-3.33V9.07c-.02-.76.08-1.29 1.66-1.7H20V4h-3.33c-3.2 0-4.46 1.84-4.17 5.08v2.53H10V15h2.5v11h4.17z"></path></svg></a>
						<a class="layout-footer__outbound__item" href="https://www.instagram.com/todayhouse" target="_blank" rel="noreferrer noopener" title="�ν�Ÿ�׷�" aria-label="�ν�Ÿ�׷�"><svg class="icon" width="30" height="30" viewBox="0 0 30 30" preserveAspectRatio="xMidYMid meet"><path fill="#757575" fill-rule="evenodd" d="M15 3c3.26 0 3.67.02 4.95.08 1.27.05 2.14.26 2.9.55a5.88 5.88 0 0 1 2.13 1.39 5.88 5.88 0 0 1 1.39 2.12c.3.77.5 1.64.55 2.91.06 1.28.08 1.7.08 4.95s-.02 3.67-.08 4.95a8.78 8.78 0 0 1-.55 2.9 5.88 5.88 0 0 1-1.39 2.13 5.88 5.88 0 0 1-2.12 1.39c-.77.3-1.64.5-2.91.55-1.28.06-1.7.08-4.95.08s-3.67-.02-4.95-.08a8.78 8.78 0 0 1-2.9-.55 5.88 5.88 0 0 1-2.13-1.39 5.88 5.88 0 0 1-1.39-2.12c-.3-.77-.5-1.64-.55-2.91C3.02 18.67 3 18.25 3 15s.02-3.67.08-4.95c.05-1.27.26-2.15.55-2.9a5.88 5.88 0 0 1 1.39-2.13 5.88 5.88 0 0 1 2.12-1.39c.76-.3 1.64-.5 2.91-.55C11.33 3.02 11.75 3 15 3zm0 2.17c-3.2 0-3.58 0-4.85.07-1.17.05-1.8.24-2.22.4-.56.23-.96.49-1.38.9a3.7 3.7 0 0 0-.9 1.39 6.64 6.64 0 0 0-.41 2.22A82.92 82.92 0 0 0 5.17 15c0 3.2 0 3.58.07 4.85.05 1.17.24 1.8.4 2.22.23.56.49.96.9 1.38.43.42.83.68 1.39.9.42.17 1.05.36 2.22.41 1.27.06 1.65.07 4.85.07 3.2 0 3.58 0 4.85-.07a6.67 6.67 0 0 0 2.23-.4c.56-.23.96-.49 1.38-.9.42-.43.68-.83.9-1.39.16-.42.35-1.05.4-2.22.06-1.27.07-1.65.07-4.85 0-3.2 0-3.58-.06-4.85a6.66 6.66 0 0 0-.42-2.23 3.72 3.72 0 0 0-.9-1.38 3.7 3.7 0 0 0-1.37-.9 6.64 6.64 0 0 0-2.23-.4A82.92 82.92 0 0 0 15 5.15zm0 3.67a6.16 6.16 0 1 1 0 12.32 6.16 6.16 0 0 1 0-12.32zM15 19a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm7.84-10.4a1.44 1.44 0 1 1-2.88 0 1.44 1.44 0 0 1 2.88 0z"></path></svg></a>
						<a class="layout-footer__outbound__item" href="http://naver.me/51ckkDZh" target="_blank" rel="noreferrer noopener" title="���̹� ����Ʈ" aria-label="���̹� ����Ʈ"><svg class="icon" width="30" height="30" viewBox="0 0 30 30" preserveAspectRatio="xMidYMid meet"><path fill="#757575" fill-rule="evenodd" d="M8.5 5h13v13h-13V5zm7.45 4v2.52L14.05 9H12v5h2.05v-2.52l1.9 2.52H18V9h-2.05zm3.11 13h-8.12L8.5 19h13l-2.44 3zm-.81 1L15 27l-3.25-4h6.5z"></path></svg></a>
					</div>
				</div>
				<ul class="layout-footer__shortcut">
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="http://bucketplace.co.kr/brand-story" target="_blank">�귣�� ���丮</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="http://bucketplace.co.kr/" target="_blank">ȸ��Ұ�</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="http://bucketplace.co.kr/recruit" target="_blank">ä������</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="/usepolicy" target="_blank">�̿���</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="/privacy" target="_blank">��������ó����ħ</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="/customer_center" target="_blank">������</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="/contacts/new" target="_blank">���� �Ҹ�</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="https://pro.ohou.se/?utm_source=ohouse&amp;utm_medium=web&amp;utm_campaign=prosignup&amp;utm_content=footer" target="_blank">������ ���</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="/contacts/b2b" target="_blank">����� ����ȸ��</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="/contacts/new?type=request" target="_blank">����/���� ����</a></li>
					<li><a class="layout-footer__shortcut__item" rel="noopener" href="/partner/applications/new" target="_blank">������û ����</a></li>
				</ul>
				<address class="layout-footer__info-wrap">
					<dl class="layout-footer__info">
						<a class="layout-footer__info__item" href="#" target="_blank"><dt>��ȣ��</dt><dd>(��)��������</dd>
						</a>
						<span class="layout-footer__info__item"><dt>�̸���</dt><dd>(������)<a href="mailto:help@houseoftomorrow.com"> help@houseoftomorrow.com </a>(���޹���)<a href="mailto:contact@houseoftomorrow.com"> contact@houseoftomorrow.com</a></dd></span><span class="layout-footer__info__item"><dt>��ǥ�̻�</dt><dd>��ȿ�� ���ȣ ������ ������ ��ȿ�� ������ �ѿ���</dd></span><span class="layout-footer__info__item"><dt>����ڵ�Ϲ�ȣ</dt><dd>615-12-34567</dd></span><span class="layout-footer__info__item"><dt>����Ǹž��Ű��ȣ</dt><dd>��2020-��⼺��-0601ȣ</dd></span><span class="layout-footer__info__item"><dt>�ּ�</dt><dd>��⵵ ������ �д籸 ���� ����Ǳ��� 670</dd></span>
					</dl>
					<dl class="layout-footer__info"><span class="layout-footer__info__item"><dt>NICEPAY �����ŷ� ����</dt><dd>������ �����ŷ��� ���� ���� ���� ��, ���� ����Ʈ���� ������ ���ž��� ���񽺸� �̿��� �� �ֽ��ϴ�. <a class="layout-footer__info__item__link" href="https://pg.nicepay.co.kr/issue/IssueEscrow.jsp?Mid=bucketplam&amp;CoNo=1198691245" target="_blank" rel="noopener noreferrer">���� Ȯ��</a></dd></span>
					</dl>
					<span class="layout-footer__info">
						<span class="layout-footer__info__item">(��)���������� ����Ǹ��߰��ڷμ� ����Ǹ��� ����ڰ� �ƴϸ�, ������ü�� ����� ��ǰ, ��ǰ���� �� �ŷ��� ���Ͽ� (��)���������� ��ü å���� ���� �ʽ��ϴ�.</span>
					</span>
				</address>
				<p class="layout-footer__copyright">Copyright &copy;
              		<script>document.write(new Date().getFullYear());</script> 
              		by ��������, All Rights Reserved
            	</p>
            </div>
        
        <div class="toast-message-root"></div>
   


      </div><!-- container end -->
    </footer>
    <!-- END footer -->

    <!-- loader -->
   
   <!--  <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div> -->

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
     <script src="js/star.js"></script>
    </script>
<!-- ICON -->
<script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>

  </body>
</html>