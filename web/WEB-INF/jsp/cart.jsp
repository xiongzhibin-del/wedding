<%@ page import="com.we.pojo.User" %>
<%@ page import="com.we.pojo.Cart" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";//basePath是当前项目的根目录
%>

<base href="<%=basePath%>">
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
<head></head>
<body>

<link href="css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" />

<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/shoppcart.js" type="text/javascript"></script>
<title>购物车</title>
<iframe src="javascript:false;" style="display: none;"></iframe>
<form id="aspnetForm" action="/nCart/Cart.aspx" method="post" name="aspnetForm">
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
            <div class="shop_nav" id="ctl00_showNav"></div>
            <!--导航条end-->

            <script type="text/javascript">
                function deleteCart(cid) {
                    if (confirm("确认删除？")) {
                       $.get(
                           "cart/delete",
                           {cid:cid},
                           function (data) {
                                if(data==="success"){
                                    alert("删除成功");
                                    location.reload();
                                }else{
                                    alert("删除失败")
                                }
                           }
                       )
                    }
                }

                function clearCart() {
                    if (confirm("确认清除？")) {
                        $.get(
                            "cart/clear",
                            function (data) {
                                if(data==="success"){
                                    alert("清空成功");
                                    location.reload();
                                }else{
                                    alert("清空失败");
                                }
                            }
                        )
                    }
                }
                function toPay() {
                    window.location = "cart/cart_agreement";
                }
            </script>
            <!--内容-->
            <div class="shop_cort">
                <!--左边-->
                <div class="shop_cort-left fl">
                    <h3>查看我的购物车</h3>
                    <!--购物车-->
                    <table cellspacing="0" cellpadding="0" border="0" class="shop_tabble">
                        <tbody>
                        <tr class="nav_tr">
                            <td style="width:240px" class="sp_td">商品</td>
                            <td style="width:100px" class="cz_td">材质</td>
                            <td style="width:100px" class="sc_td">手寸/尺寸</td>
                            <td style="width:100px" class="kz_td">刻字</td>
                            <td class="gm_td">购买价</td>
                        </tr>
                        <c:forEach items="${login.cart}" var="carts">
                        <tr class="cp_tr">
                            <td class="sp_td"> <a href="/darry_ring/87.html" class="jx_shop"> <img width="85" height="85" src="images/${carts.commdity.image.filename}" /> <span> ${carts.commdity.seres}系列 ${carts.commdity.style}</span></a> </td>
                            <td class="cz_td">${carts.commdity.texture}</td>
                            <td class="sc_td">${carts.chicun}</td>
                            <td class="kz_td" id="kezi">${carts.kezi}</td>
                            <td style="font-family:微软雅黑" class="gm_td">￥${carts.commdity.price}</td>
                            <td class="close_td"><span onClick="deleteCart(${carts.cid});" class="sicon s_close"></span></td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <!--购物车end-->
                    <!--结算-->
                    <%
                        User login =(User) session.getAttribute("login");
                        List<Cart> list = login.getCart();
                        long total = 0;
                        for(Cart c:list){
                            total += c.getCommdity().getPrice();
                        }
                        request.setAttribute("total",total);
                    %>
                    <div class="shop_js">
                        <a class="jx_shop" href="lists.html">继续购物</a>
                        <a class="qk_shop" href="javascript:clearCart();">清空购物车</a>
                        <span>你购买了<i>${login.cart.size()}</i>件商品</span>
                        <span>总计：<i style="font-family:微软雅黑" class="fw_bold">￥${total}</i></span>
                        <span onClick="toPay();" class="end_bt"><em>立即结算</em></span>
                    </div>
                    <!--结算end-->
                </div>
                <!--左边end-->
                <!--右边-->
                <!--右边-->
                <div class="shop_cort-right fr">
                    <div class="shop_right-nr">
                        <h3>购物帮助指南</h3>
                        <div class="shop_right-zx line_bottom">
                            <p class="shop_lx">24小时在线客服</p>
                            <p class="shop_tel">400-01-13520</p>
                        </div>
                        <div class="shop_right-zf line_bottom">
                            <h4>支付安全保障</h4>
                            <p>安全支付系统采用SSL加密。</p>
                            <ul class="shop_right-ul">
                                <li class="shop_cor-yl"></li>
                                <li class="shop_cor-cft"></li>
                                <li class="shop_cor-zf"></li>
                            </ul>
                        </div>
                        <div class="shop_right-ps">
                            <h4>全球配送</h4>
                            <p class="shop_kd">支持全球配送,店铺取货</p>
                            <p class="shop_bj">全程保价 无风险</p>
                        </div>
                    </div>
                </div>
                <!--右边end-->
                <!--右边end-->
            </div>
            <!--底部-->
            <div class="cmain shop_foot">
                <p>Copyright &copy; 2006-2015 www.darryring.com 戴瑞珠宝 All Rights Reserved. 粤ICP备11012085号</p>
                <p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
                <div class="shop_foot-img">
                    <img src="images/db.jpg" />
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