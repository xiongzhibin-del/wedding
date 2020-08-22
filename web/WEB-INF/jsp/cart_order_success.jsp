<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";//basePath是当前项目的根目录
%>

<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
<head>
    <base href="<%=basePath%>">
</head>
<body>
<link href="css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" />

<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/shoppcart.js" type="text/javascript"></script>
<title>购物车 - 订单提交成功</title>
<script src="js/ma3.js" type="text/javascript"></script>
<script type="text/javascript">
    function toPay() {
        var nu = '1';

        var url = '/toPay.aspx?id=20150707888887&tab=' + $("input[name='target']:checked").val();
        window.open(url);


    }
</script>
<iframe src="javascript:false;" style="display: none;"></iframe>
<form id="aspnetForm" action="/ncart/ConfirmOrder.aspx?orderid=20150707888887&amp;process=darryring" method="post" name="aspnetForm">

    <!--全部背景-->
    <div class="all-thing">
        <!--中间内容-->
        <div class="tcmain">
            <!--头部-->
            <div class="shop_top">
                <div class="shopt_left fl">
                    <a title="Darry Ring" href="index.html"> <img width="186" height="42" src="images/dr.png" /> </a>
                    <span>求婚钻戒领导品牌</span>
                </div>
                <div class="shopt_right fr">
                    <c:choose>
                        <c:when test="${login.petname eq null}">
                            <span id="ctl00_ltlUname">你好！${login.uname}</span>
                        </c:when>
                        <c:otherwise>
                            <span id="ctl00_ltlUname">你好！${login.petname}</span>
                        </c:otherwise>
                    </c:choose>
                    <a class="my_dr" href="member_index.html">我的DR</a>
                    <a onClick="javascript:logout()" class="tc_dr" href="#">退出</a>
                    <a class="help_dr" href="help.html">帮助中心</a>
                </div>
            </div>
            <!--头部end-->
            <!--导航条-->
            <div class="shop_nav shop_nav-end" id="ctl00_showNav"></div>
            <!--导航条end-->
            <!--订单提交-->
            <div class="shop_of-for">
                <div class="shop_ofor-top">
                    <img width="54" height="67" src="images/right.png" />
                    <h3>${msg}</h3>
                    <h4>请您在24小时内完成付款，超过24小时后系统将自动取消订单。</h4>
                    <p class="shop_ofor-font"> <span>订单号：${order.random} | 应付总金额：</span> <i style="font-family:微软雅黑;">￥${order.total}</i> <a target="_blank" href="/member/myorder.aspx">查看订单&gt;&gt;</a> </p>
                </div>
                <h2>网上支付方式</h2>
                <!--银行-->
                <ul class="shop_ofor-bank">
                    <li> <input type="radio" id="bankgongshang" checked="checked" value="0005" name="target" /> <label for="bankgongshang"> <img width="160" height="43" src="images/bank1.jpg" /> </label> </li>
                    <li> <input type="radio" value="14" id="bankpingan" name="target" /> <label for="bankpingan"> <img width="160" height="43" src="images/bank2.jpg" /> </label> </li>
                    <li> <input type="radio" value="1010" id="bankjianshe" name="target" /> <label for="bankjianshe"> <img width="160" height="43" src="images/bank3.jpg" /> </label> </li>
                    <li> <input type="radio" value="43" id="banknongye" name="target" /> <label for="banknongye"> <img width="160" height="43" src="images/bank4.jpg" /> </label> </li>
                    <li> <input type="radio" value="3" id="bankzhaoshang" name="target" /> <label for="bankzhaoshang"> <img width="160" height="43" src="images/bank5.jpg" /> </label> </li>
                    <li> <input type="radio" value="67" id="bankjiaotong" name="target" /> <label for="bankjiaotong"> <img width="160" height="43" src="images/bank6.jpg" /> </label> </li>
                    <li> <input type="radio" value="84" id="bankzhongxin" name="target" /> <label for="bankzhongxin"> <img width="160" height="43" src="images/bank7.jpg" /> </label> </li>
                    <li> <input type="radio" value="60" id="bankhuaxia" name="target" /> <label for="bankhuaxia"> <img width="160" height="43" src="images/bank8.jpg" /> </label> </li>
                    <li> <input type="radio" value="1022" id="bankpufa" name="target" /> <label for="bankpufa"> <img width="160" height="43" src="images/bank9.jpg" /> </label> </li>
                    <li> <input type="radio" value="0051" id="bankdongya" name="target" /> <label for="bankdongya"> <img width="160" height="43" src="images/bank10.jpg" /> </label> </li>
                    <li> <input type="radio" value="44" id="bankguangfa" name="target" /> <label for="bankguangfa"> <img width="160" height="43" src="images/bank11.jpg" /> </label> </li>
                    <li> <input type="radio" value="33" id="bankxingye" name="target" /> <label for="bankxingye"> <img width="160" height="43" src="images/bank12.jpg" /> </label> </li>
                    <li> <input type="radio" value="28" id="bankmingsheng" name="target" /> <label for="bankmingsheng"> <img width="160" height="43" src="images/bank13.jpg" /> </label> </li>
                    <li> <input type="radio" value="85" id="bankzhongguo" name="target" /> <label for="bankzhongguo"> <img width="160" height="43" src="images/bank14.jpg" /> </label> </li>
                    <li> <input type="radio" value="74" id="bankguangda" name="target" /> <label for="bankguangda"> <img width="160" height="43" src="images/bank15.jpg" /> </label> </li>
                    <li> <input type="radio" value="59" id="bankyouzheng" name="target" /> <label for="bankyouzheng"> <img width="160" height="43" src="images/bank16.jpg" /> </label> </li>
                    <li> <input type="radio" value="8607" id="bankzaixian" name="target" /> <label for="bankzaixian"> <img width="160" height="43" src="images/bank17.jpg" /> </label> </li>
                    <li> <input type="radio" value="alipay" id="bankzhifubao" name="target" /> <label for="bankzhifubao"> <img width="160" height="43" src="images/bank18.jpg" /> </label> </li>
                </ul>
                <!--银行end-->
                <!--提交按钮-->
                <div class="shop_ofor-button">
                    <div onClick="toPay()" class="bt3">
                        <span>立即支付</span>
                    </div>
                </div>
                <!--提交按钮end-->
            </div>

            <!--底部-->
            <div class="cmain shop_foot">
                <p>Copyright &copy; 2006-2015 www.darryring.com 戴瑞珠宝 All Rights Reserved. 粤ICP备11012085号</p>
                <p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
                <div class="shop_foot-img">
                    <img width="776" height="55" src="images/db.jpg" />
                </div>
            </div>
            <!--底部end-->
        </div>
        <!--全部背景end-->
    </div>
    <script type="text/javascript">
        function logout() {
            var r = window.confirm('确定退出吗？')
            if (r == true) {
                $.get(
                    "user/exitUser",
                    function (data) {
                        if (data == "1") {
                            window.location.href = "login";
                        }
                    });
            }
        }
    </script>
</form>

</body>
</html>