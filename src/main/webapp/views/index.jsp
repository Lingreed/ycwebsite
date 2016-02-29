<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
  <meta name="viewport" content="width=device-width,user-scalable=no, initial-scale=1.0" />
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="black" />
  <meta name="keywords" content="">
  <meta name="description" content="">


  <!-- site title -->
  <title>Mintmedical</title>

  <!-- Stylesheets css comes here -->
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/favicon.ico" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/media.css">
  <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.useso.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>

</head>
<body data-spy="scroll" data-target=".navbar-collapse">

<!-- preloader section -->
<div class="preloader">
  <img src="<%=request.getContextPath()%>/images/loading.gif" />
</div>

<!-- navigation section -->
<nav class="navbar navbar-default navbar-fixed-top sticky-navigation" role="navigation">
  <div class="container">

    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <img src="<%=request.getContextPath()%>/images/navbar.png" />
      </button>
      <a href="#home" class="navbar-home "><img src="<%=request.getContextPath()%>/images/home.png" /></a>
      <a href="#"><img title="杭州亿川科技有限公司" alt="杭州亿川科技有限公司" src="<%=request.getContextPath()%>/images/logo.png" /></a>
    </div>

    <div class="collapse navbar-collapse sticky-navigation-action3">
      <ul class="nav navbar-nav navbar-right main-navigation">
        <li class="nav-home"><a href="#home" data-select="#home" class="smoothScroll ">首页</a></li>
        <li><a href="#success" data-select="#success" class="smoothScroll">成功案例</a></li>
        <li><a href="#contactUs" data-select="#contactUs" class="smoothScroll nav-last">联系我们</a></li>
      </ul>
    </div>

    <div class="navbar-top"></div>
  </div>
</nav>

<!-- home section -->
<section id="home" class="yc-home">
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active item-01">
        <img src="<%=request.getContextPath()%>/images/1.png" class="item-img" />
        <img src="<%=request.getContextPath()%>/images/1-1.png" class="media-item-img" />
        <div class="carousel-caption">
          <div class="carousel-con wow bounceInRight" data-wow-delay="0.3s"> <img src="<%=request.getContextPath()%>/images/1-con.png" /></div>
          <div class="carousel-btn wow bounceInRight" data-wow-delay="0.4s">专注健康领域的互联网医疗公司</div>
        </div>
      </div>

      <div class="item item-02">
        <img src="<%=request.getContextPath()%>/images/2.png" class="item-img" />
        <img src="<%=request.getContextPath()%>/images/2-1.png" class="media-item-img" />
        <div class="carousel-caption">
          <div class="carousel-top wow bounceInRight" data-wow-delay="0.3s"><img src="<%=request.getContextPath()%>/images/2-top.png" /></div>
          <div class="carousel-con wow bounceInRight" data-wow-delay="0.4s">手机上的私人医生</div>
          <div class="carousel-btn wow bounceInRight" data-wow-delay="0.5s"><img src="<%=request.getContextPath()%>/images/2-btn.png" /> </div>
        </div>
      </div>


      <div class="item item-03">
        <img src="<%=request.getContextPath()%>/images/3.png" class="item-img" />
        <img src="<%=request.getContextPath()%>/images/3-1.png" class="media-item-img" />
        <div class="carousel-caption">
          <div class="carousel-top wow bounceInRight" data-wow-delay="0.3s"><img src="<%=request.getContextPath()%>/images/3-top.png" /></div>
          <div class="carousel-con">
            <div class="carousel-con-01 wow bounceInRight" data-wow-delay="0.4s">手机挂号，医院导航轻松候诊</div>
            <div class="carousel-con-02 wow bounceInRight" data-wow-delay="0.5s">根据处方，智能提醒服药时间</div>
          </div>
          <div class="carousel-btn wow bounceInRight" data-wow-delay="0.6s"><img src="<%=request.getContextPath()%>/images/3-btn.png" /></div>
        </div>
      </div>
    </div>
    <!-- Controls -->
       <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
           <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"><img src="<%=request.getContextPath()%>/images/left.png" class="wow bounceInLeft" data-wow-delay="0.7s" /></span>
       </a>
       <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
           <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"><img src="<%=request.getContextPath()%>/images/right.png" class="wow bounceInRight" data-wow-delay="0.7s" /></span>
       </a>
  </div>

</section>

<!-- social icons section -->
<section id="tm-icons" class="yc-icons">
  <div class="container">
    <div class="icons-01 wow bounceInLeft" data-wow-delay="0.3s">
      <div class="icons-left"><img src="<%=request.getContextPath()%>/images/yc-icon-1.png" /></div>
      <div class="icons-right">
        <div class="icons-title">医生在线咨询</div>
        <div class="icons-txt">文字、语音、图片清楚描述病情</div>
      </div>
    </div>
    <div class="icons-02 wow bounceInRight" data-wow-delay="0.5s">
      <div class="icons-left"><img src="<%=request.getContextPath()%>/images/yc-icon-2.png" /></div>
      <div class="icons-right">
        <div class="icons-title">互联网医疗</div>
        <div class="icons-txt">实时挂号、电子健康档案、电子处方、线下送药等多种形式的健康管家服务</div>
      </div>
    </div>
  </div>
</section>
<!-- success section -->
<section class="yc-success" id="success">
  <div class="container">
    <img src="<%=request.getContextPath()%>/images/yc-success.png" class="wow bounceIn" data-wow-delay="0.3s" />
  </div>
</section>
<!-- happylife section -->
<section class="yc-happylife" id="happylife">
  <img src="<%=request.getContextPath()%>/images/happylife-bg.png" class="wow fadeInUp happylife-bg" data-wow-delay="0.3s" />
  <img src="<%=request.getContextPath()%>/images/media-happylife-bg.png" class="wow fadeInUp media-happylife-bg" data-wow-delay="0.3s" />
  <div class="happylife-container">
    <div class="container">
      <div class="happylife-top">
        <div class="happylife-top-title"><img src="<%=request.getContextPath()%>/images/happylife-top-title.png" class="wow fadeInUp" data-wow-delay="0.3s" /></div>
        <div class="happylife-top-right">
          <img src="<%=request.getContextPath()%>/images/happylife-top-01.png" class="wow fadeInDownBig first" data-wow-delay="0.3s" />
          <img src="<%=request.getContextPath()%>/images/happylife-top-02.png" class="wow fadeInDownBig" data-wow-delay="0.5s" />
          <img src="<%=request.getContextPath()%>/images/happylife-top-03.png" class="wow fadeInDownBig" data-wow-delay="0.7s" />
          <img src="<%=request.getContextPath()%>/images/happylife-top-04.png" class="wow fadeInDownBig happylife-top-04" data-wow-delay="0.9s" />
          <img src="<%=request.getContextPath()%>/images/happylife-top-05.png" class="wow fadeInDownBig" data-wow-delay="1.1s" />
        </div>
      </div>
      <div class="happylife-icon">
        <div class="happylife-icon-right-01">
          <img src="<%=request.getContextPath()%>/images/happylife-txt.png" class="wow bounceInRight" data-wow-delay="0.3s" />
        </div>
        <div class="happylife-icon-left"><img src="<%=request.getContextPath()%>/images/happylife-02.png" class="wow fadeInUp" data-wow-delay="0.3s" /></div>

        <div class="happylife-icon-right-02">
          <img src="<%=request.getContextPath()%>/images/happylife-03-01.png" class="wow fadeInUpBig happylife-03-01" data-wow-delay="0.3s" />
          <img src="<%=request.getContextPath()%>/images/happylife-03-02.png" class="wow fadeInUpBig happylife-03-02" data-wow-delay="0.5s" />
          <img src="<%=request.getContextPath()%>/images/happylife-03-03.png" class="wow fadeInUpBig happylife-03-03" data-wow-delay="0.7s" />
        </div>
      </div>
    </div>
  </div>
</section>
<!-- happyhealthy section -->
<section class="yc-happyhealthy">
  <img src="<%=request.getContextPath()%>/images/happyhealthy-bg.png" class="wow fadeInUp happyhealthy-bg" data-wow-delay="0.3s" />
  <img src="<%=request.getContextPath()%>/images/media-happyhealthy-bg.png" class="wow fadeInUp media-happyhealthy-bg" data-wow-delay="0.3s" />
  <div class="happyhealthy-container">
    <div class="container">
      <div class="happyhealthy-top">
        <img src="<%=request.getContextPath()%>/images/happyhealthy-logo.png" class="wow fadeInUp img-01" data-wow-delay="0.3s" />
        <img src="<%=request.getContextPath()%>/images/happyhealthy-logo-txt.png" class="wow fadeInUp img-02" data-wow-delay="0.5s" />
        <img src="<%=request.getContextPath()%>/images/happyhealthy-logo-txt2.png" class="wow fadeInUp img-03" data-wow-delay="0.7s" />
      </div>
      <div class="happyhealthy-icon">
        <img src="<%=request.getContextPath()%>/images/happyhealthy-01.png" class="wow fadeInRight happyhealthy-icon-01" data-wow-delay="0.8s" />
        <img src="<%=request.getContextPath()%>/images/happyhealthy-02.png" class="wow fadeInRight happyhealthy-icon-02" data-wow-delay="0.5s" />
        <img src="<%=request.getContextPath()%>/images/happyhealthy-03.png" class="wow pulse happyhealthy-icon-03" data-wow-delay="0.2s" />
        <img src="<%=request.getContextPath()%>/images/happyhealthy-04.png" class="wow fadeInLeft happyhealthy-icon-04" data-wow-delay="0.5s" />
        <img src="<%=request.getContextPath()%>/images/happyhealthy-05.png" class="wow fadeInLeft happyhealthy-icon-05" data-wow-delay="0.8s" />
      </div>

    </div>
  </div>
</section>
<!-- children's-hospital section -->
<section class="yc-childrenshospital">
  <img src="<%=request.getContextPath()%>/images/childrenshospital-bg.png" class="wow fadeInUp childrenshospital-bg" data-wow-delay="0.3s" />
  <img src="<%=request.getContextPath()%>/images/media-childrenshospital-bg.png" class="wow fadeInUp media-childrenshospital-bg" data-wow-delay="0.3s" />
  <div class="childrenshospital-container">
    <div class="container">
      <div class="childrenshospital-left">
        <img src="<%=request.getContextPath()%>/images/childrenshospital-01-title.png" class="wow fadeInUp childrenshospital-01" data-wow-delay="0.3s" />
        <div class="childrenshospital-02" >
            <div class="childrenshospital-02-title wow fadeInUp" data-wow-delay="0.5s">内部管理系统APP</div>
            <div class="childrenshospital-02-txt wow fadeInUp" data-wow-delay="0.7s">权限管理<br/>IM即时通信<br />运营数据查看<br /> OA系统</div>
        </div>
        <img src="<%=request.getContextPath()%>/images/childrenshospital-01-title3.png" class="wow fadeInUp childrenshospital-margin childrenshospital-03" data-wow-delay="0.9s" />
        <img src="<%=request.getContextPath()%>/images/childrenshospital-01-title4.png" class="wow fadeInUp childrenshospital-margin childrenshospital-04" data-wow-delay="1.1s" />
      </div>

      <div class="childrenshospital-right">
        <img src="<%=request.getContextPath()%>/images/childrenshospital-03.png" class="wow fadeInUp childrenshospital-03" data-wow-delay="0.5s" />
        <img src="<%=request.getContextPath()%>/images/childrenshospital-02.png" class="wow fadeInUp childrenshospital-02" data-wow-delay="0.3s" />
      </div>
    </div>
  </div>
</section>
<!-- contactUs section -->
<section class="contactUs" id="contactUs">
  <div class="container">
    <div class="contactUs-title"><img src="<%=request.getContextPath()%>/images/contactUs.png" class="wow bounceIn" data-wow-delay="0.3s" /></div>
  </div>
  <div class="contactUs-icon">
    <div class="container">
      <div class="contactUs-icon-left">
        <div class="contactUs-icon-left-01 wow fadeInUp" data-wow-delay="0.5s">
          <img src="<%=request.getContextPath()%>/images/contactUs-left-01.png" />
          <p>杭州亿川科技有限公司成立于2014年，总部位于杭州。 <br />一家致力于健康领域的互联网医疗公司，以改善医患关系为宗旨，解决挂号难，看病难等民生问题。</p>
        </div>
        <div class="contactUs-icon-left-01 wow fadeInUp" data-wow-delay="0.7s">
          <img src="<%=request.getContextPath()%>/images/contactUs-left-02.png" />
          <p class="marginT">0571-8825-5010</p>
        </div>
        <div class="contactUs-icon-left-01 wow fadeInUp" data-wow-delay="0.9s">
          <img src="<%=request.getContextPath()%>/images/contactUs-left-03.png" />
          <p class="marginT">info@mintcode.com</p>
        </div>
        <div class="contactUs-icon-left-01 wow fadeInUp" data-wow-delay="1s">
          <img src="<%=request.getContextPath()%>/images/contactUs-left-04.png" />
          <p class="marginT">杭州市下城区绍兴路168号和平大厦3楼304</p>
        </div>
      </div>
      <div class="contactUs-icon-right">
        <form>
          <div class="contactUs-icon-right-01 wow fadeInUp " data-wow-delay="0.3s">
            <input type="text" name="name" placeholder="姓名" data-reg=".+"/>
            <div class="contactUs-icon-right-txt">
              <span class="required">*</span>
            </div>
          </div>
          <div class="contactUs-icon-right-01 wow fadeInUp " data-wow-delay="0.5s">
            <input type="text" name="email" placeholder="Email" data-reg="^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$" />
            <div class="contactUs-icon-right-txt">
              <span class="required">*</span>
            </div>
          </div>
          <div class="contactUs-icon-right-01  wow fadeInUp " data-wow-delay="0.7s">
            <input type="text" name="validCode" id="contactUs_yz" class="contactUs-icon-right-input-yz" placeholder="验证码" data-reg="\w+" />
            <img class="wow fadeInUp " id="kaptchaImage" data-wow-delay="0.3s" src="<%=request.getContextPath()%>/code/captcha-image" />
            <div class="contactUs-icon-right-txt">
              <span class="required">*</span>
            </div>
          </div>
          <div class="contactUs-icon-right-01 wow fadeInUp " data-wow-delay="0.9s">
            <textarea class="contactUs-icon-right-textarea " name="text" placeholder="正文" data-reg=".+" ></textarea>
            <div class="contactUs-icon-right-txt">
              <span class="required">*</span>
            </div>
          </div>
          <div class="contactUs-icon-right-01 wow fadeInUp " data-wow-delay="0.3s">
            <button>发 &nbsp;送</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>
<!-- footer -->
<section class="footer">
  <div class="container">
    <div class="footer-icon">
      <div class="footer-icon-logo"><img src="<%=request.getContextPath()%>/images/footer-logo-01.png" class="wow fadeInUp" data-wow-delay="0.3s" /></div>
      <p class="footer-icon-txt wow fadeInUp " data-wow-delay="0.5s">iCopyright © 2015 Mintmedical Co., Ltd All Rights Reserved <br />浙ICP备15018185号-1 </p>
    </div>
    <div class="footer-icon footer-right">
      <div class="footer-icon-logo"><img src="<%=request.getContextPath()%>/images/footer-logo-02.png" class="wow fadeInUp" data-wow-delay="0.3s" /></div>
      <div class="footer-icon-txt wow fadeInUp " data-wow-delay="0.5s"><a href="http://www.mintcode.com/">http://www.mintcode.com/</a></div>
    </div>
  </div>
</section>

<!-- javascript js comes here -->
<script src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/js/jquery.nav.js"></script>
<script src="<%=request.getContextPath()%>/js/wow.min.js"></script>
<script src="<%=request.getContextPath()%>/js/smoothscroll.js"></script>
<script src="<%=request.getContextPath()%>/js/custom.js"></script>
</body>
</html>