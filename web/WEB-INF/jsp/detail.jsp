<%@ page import="com.we.pojo.Commdity" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

<head></head>
    <base href="<%=basePath%>">
<body>
<%--<%--%>
<%--    List<Commdity> comms = (List<Commdity>) session.getAttribute("commdities");--%>
<%--    System.out.println(Integer.parseInt(request.getParameter("index")));--%>
<%--    Commdity comm = comms.get(Integer.parseInt(request.getParameter("index")));--%>
<%--    request.setAttribute("comm",comm);--%>
<%--    System.out.println(comm);--%>
<%--%>--%>
<link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
<meta content="Darry Ring官网提供Darry Ring 锁住一生 LOCK套链购买，更有锁住一生 LOCK套链等相关资讯，了解锁住一生 LOCK套链图片、价格就上戴瑞珠宝官网。" name="description" />

<script src="js/buy_xq.js" type="text/javascript"></script>
<script src="js/Magnifier.js" type="text/javascript"></script>
<script src="js/fd_hd.js" type="text/javascript"></script>
<script src="js/navQH.js" type="text/javascript"></script>
<link href="css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">

    var CurrentDiamondPrice = 0.00 * 45;
    var FDiamondPrice = 0 * 0;
    var CurrentMaterialPrice = 0;

    function getProductPrice()
    {
        return formatCurrency(CurrentDiamondPrice + FDiamondPrice + CurrentMaterialPrice);
    }

    // $(function(){
    //     MaterialChoosedEvent = function(m,p){
    //         CurrentMaterialPrice = p;
    //         $(".byright_top span").text("¥"+getProductPrice());
    //     };
    // });

    function addCart(msg) {
//            alert(msg);
        window.location = "/nCart/Cart.aspx";

    }

    var addCartComplete= function(){};
    function addCartFun() {
        var data = {
            pid : 404,
            caizhi : $(".thr_first .iborder").text()
        };
        $.post("/nAPI/Cart.aspx?action=addcart&type=jewelry",data, function (msg) {
            addCart(msg);

        });
    }

    function formatCurrency(num) {
        num = num.toString().replace(/\$|\,/g, '');
        if (isNaN(num))
            num = "0";
        sign = (num == (num = Math.abs(num)));
        num = Math.floor(num * 100 + 0.50000000001);
        cents = num % 100;
        num = Math.floor(num / 100).toString();
        if (cents < 10)
            cents = "0" + cents;
        for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
            num = num.substring(0, num.length - (4 * i + 3)) + ',' +
                num.substring(num.length - (4 * i + 3));
        var str = (((sign) ? '' : '-') + num + '.' + cents);
        str = str.substr(0, str.length - 3);
        return str;
    }
</script>
<title>钻戒详情</title>
<script type="text/javascript" async="async" charset="utf-8" src="js/zh_cn.js?siteid=kf_9883" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/chat.in.js?siteid=kf_9883" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/nt2.js?siteid=kf_9883" data-requiremodule="Window"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/zh_cn.js?siteid=kf_9883" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/chat.in.js?siteid=kf_9883" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/nt2.js?siteid=kf_9883" data-requiremodule="Window"></script>
<iframe src="javascript:false;" style="display: none;"></iframe>
<link href="css/jiathis_counter.css" rel="stylesheet" type="text/css" />

<script src="http://tajs.qq.com/jiathis.php?uid=1626433&amp;dm=www.darryring.com" charset="utf-8"></script>
<link href="css/jiathis_share.css" rel="stylesheet" type="text/css" />
<iframe frameborder="0" style="position: fixed; display: none; opacity: 0;"></iframe>
<div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div>
<div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div>
<iframe frameborder="0" style="display: none;" src="http://v3.jiathis.com/code_mini/jiathis_utility.html"></iframe>
<form id="aspnetForm" action="" method="post" name="aspnetForm">
    <div>
        <input type="hidden" value="/wEPDwUJOTIyMDg5NDk3D2QWAmYPZBYCAgMQZGQWBgIBD2QWAgIBDw8WAh4HVmlzaWJsZWdkZAIDD2QWCgIBD2QWBGYPFgIeC18hSXRlbUNvdW50AgQWCGYPZBYCZg8VAiHplIHkvY/kuIDnlJ8gTE9DS+Wll+mTviAwLjAwNiBHLUlNaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTUwMTIxMTA1OTA5MTRiMmZlZTRiMi5qcGdkAgEPZBYCZg8VAiHplIHkvY/kuIDnlJ8gTE9DS+Wll+mTviAwLjAwNiBHLUlNaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTUwMTIxMTA1OTEwMjc3YjkyOTU2NC5qcGdkAgIPZBYCZg8VAiHplIHkvY/kuIDnlJ8gTE9DS+Wll+mTviAwLjAwNiBHLUlNaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTUwMTIwMTg1MTMwNTJmNGNkZWM1Ni5qcGdkAgMPZBYCZg8VAiHplIHkvY/kuIDnlJ8gTE9DS+Wll+mTviAwLjAwNiBHLUlNaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTUwMTIwMTg1MTMwMzFkYWE5YmVkNy5qcGdkAgEPFgIfAQIEFghmD2QWAmYPFQMEMjA4MyHplIHkvY/kuIDnlJ8gTE9DS+Wll+mTviAwLjAwNiBHLUlNaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTUwMTIxMTA1OTA5MTRiMmZlZTRiMi5qcGdkAgEPZBYCZg8VAwQyMDg0IemUgeS9j+S4gOeUnyBMT0NL5aWX6ZO+IDAuMDA2IEctSU1odHRwOi8vaW1nLmRhcnJ5cmluZy5jb20vdXNlcmZpbGVzL2ltYWdlL1Byb2R1Y3QvMjAxNTAxMjExMDU5MTAyNzdiOTI5NTY0LmpwZ2QCAg9kFgJmDxUDBDIwODUh6ZSB5L2P5LiA55SfIExPQ0vlpZfpk74gMC4wMDYgRy1JTWh0dHA6Ly9pbWcuZGFycnlyaW5nLmNvbS91c2VyZmlsZXMvaW1hZ2UvUHJvZHVjdC8yMDE1MDEyMDE4NTEzMDUyZjRjZGVjNTYuanBnZAIDD2QWAmYPFQMEMjA4NiHplIHkvY/kuIDnlJ8gTE9DS+Wll+mTviAwLjAwNiBHLUlNaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTUwMTIwMTg1MTMwMzFkYWE5YmVkNy5qcGdkAgIPZBYCAgMPFgIfAGhkAgMPZBYCAgEPFgIfAQIBFgJmD2QWAmYPFQIHNTkyMC4wMAkxOEvnmb3ph5FkAgQPZBYIZg8PFgIfAGhkZAICDw8WAh8AaGRkAgMPDxYCHwBoZGQCBg9kFgJmDxAPFgYeDURhdGFUZXh0RmllbGQFCHNob3BuYW1lHg5EYXRhVmFsdWVGaWVsZAUCaWQeC18hRGF0YUJvdW5kZ2QQFRAY6K+36YCJ5oup6aKE57qm5a6e5L2T5bqXD+a3seWcs+WunuS9k+W6lw/ljJfkuqzlrp7kvZPlupcP5bm/5bee5a6e5L2T5bqXD+mHjeW6huWunuS9k+W6lw/kuIrmtbflrp7kvZPlupcP5q2m5rGJ5a6e5L2T5bqXD+WNl+S6rOWunuS9k+W6lw/plb/mspnlrp7kvZPlupcP5aSp5rSl5a6e5L2T5bqXD+aYhuaYjuWunuS9k+W6lw/oi4/lt57lrp7kvZPlupcP5aSn6L+e5a6e5L2T5bqXD+aXoOmUoeWunuS9k+W6lw/miJDpg73lrp7kvZPlupcP5a6B5rOi5a6e5L2T5bqXFRACLTEBMQEyATMBNAE3ATkCMTACMTECMTICMTMCMTQCMTUCMTYCMTcCMTgUKwMQZ2dnZ2dnZ2dnZ2dnZ2dnZ2RkAgUPZBYEZg8WAh8BAgEWAmYPZBYCZg8VBhBqZXdlbHJ5LzQwNC5odG1sJOmUgeS9j+S4gOeUnyBMT0NL5aWX6ZO+IDAuNuWIhkctSeiJsk1odHRwOi8vaW1nLmRhcnJ5cmluZy5jb20vdXNlcmZpbGVzL2ltYWdlL1Byb2R1Y3QvMjAxNTAxMjExMDU5MDkxNGIyZmVlNGIyLmpwZxBqZXdlbHJ5LzQwNC5odG1sJOmUgeS9j+S4gOeUnyBMT0NL5aWX6ZO+IDAuNuWIhkctSeiJsgU1LDkyMGQCAQ8WAh8BAgUWCmYPZBYCZg8VBhJkYXJyeV9yaW5nLzc4Lmh0bWwXRm9yZXZlcuezu+WIlyDnu4/lhbjmrL5NaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTQwOTAxMTkzNTA3MTczODZkN2ExZS5qcGcSZGFycnlfcmluZy83OC5odG1sF0ZvcmV2ZXLns7vliJcg57uP5YW45qy+BjI1LDcwMGQCAQ9kFgJmDxUGE2RhcnJ5X3JpbmcvMTM3Lmh0bWwXRm9yZXZlcuezu+WIlyDnu4/lhbjmrL5NaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTQwOTAxMTkyOTE3MTc5ZDFhZTM4Ni5qcGcTZGFycnlfcmluZy8xMzcuaHRtbBdGb3JldmVy57O75YiXIOe7j+WFuOasvgYxMCwyMDBkAgIPZBYCZg8VBhJkYXJyeV9yaW5nLzkyLmh0bWwYSnVzdCB5b3Xns7vliJcg57uP5YW45qy+TWh0dHA6Ly9pbWcuZGFycnlyaW5nLmNvbS91c2VyZmlsZXMvaW1hZ2UvUHJvZHVjdC8yMDE0MDkwMTE5NTUwNzY4M2FkODQ0NzcuanBnEmRhcnJ5X3JpbmcvOTIuaHRtbBhKdXN0IHlvdeezu+WIlyDnu4/lhbjmrL4FMyw2ODlkAgMPZBYCZg8VBhNkYXJyeV9yaW5nLzE2OC5odG1sGE15IGhlYXJ057O75YiXIOWlouWNjuasvk1odHRwOi8vaW1nLmRhcnJ5cmluZy5jb20vdXNlcmZpbGVzL2ltYWdlL1Byb2R1Y3QvMjAxNTAyMDMxNTQxNDcwZjU0OWVlY2I0LmpwZxNkYXJyeV9yaW5nLzE2OC5odG1sGE15IGhlYXJ057O75YiXIOWlouWNjuasvgYzOCw2MzZkAgQPZBYCZg8VBhNkYXJyeV9yaW5nLzM4Ny5odG1sFlRydWUgTG92Zeezu+WIlyDlhbjpm4VNaHR0cDovL2ltZy5kYXJyeXJpbmcuY29tL3VzZXJmaWxlcy9pbWFnZS9Qcm9kdWN0LzIwMTQxMjA4MTUxMjA3MGI4MmQ1MTljYi5qcGcTZGFycnlfcmluZy8zODcuaHRtbBZUcnVlIExvdmXns7vliJcg5YW46ZuFBjE5LDE1MGQCBQ9kFgJmDxYCHwECCmRkQTlXYn/HqbRvVStqoFxk/OAQTVI=" id="__VIEWSTATE" name="__VIEWSTATE" />
    </div>
    <div>
        <input type="hidden" value="4468300E" id="__VIEWSTATEGENERATOR" name="__VIEWSTATEGENERATOR" />
        <input type="hidden" value="/wEdABPmDV05eWhYMawVeIG9LaEAsC97KIAWj2wmqprDk0ZFfBmrXOWER3/4/m5yEc8uWkvMfAXnnZyfT8O8wycQ1daW6wXG53fuIhcEU1rRrD8VYn76jonvOgQAR5uwWhkr+WbEFrp2GqYqfBR6Toy05bu9X20A1goxdbNPp2EaMJ27GmCMQ1KZ5BxOTlXrOHqoUzkCVIgD8HUcDyuUNwIarwJvjVVBdxebYoCGLrNNhW2BUusc+m3r0pGLz+c7yIHP5W4HmUSy+rTIGTfg6M5McYWMqxHpnClB/5tsp9jq0gsw6ZLgUqk/Zkcqzzi2xsF31HSkEjNHVKO89fSjX6G2hkPdNBcPHT8YZZ3PoZ+PBbm2zXNvqNfM116QcozRJGJF7GPfg5TVZ8FwN1E5uzyZN0xKYD9rtZEpN/w4cD/SakQ6A0kj6ec=" id="__EVENTVALIDATION" name="__EVENTVALIDATION" />
    </div>
    <div>
        <script type="text/javascript">
            function showSearch() {
                window.location = "/diydr/?pname=" + encodeURI($(".search input").val()) + "&bprice=&eprice=&bct=&ect=&orderby=&pagenum=1";
            }
            //    $(function () {
            //        $.getJSON("/nAPI/loginuser.ashx", function (json) {
            //            if (json.islogin) {
            //                $(".tright-ul li").eq(3).show();
            //                $(".tright-ul li").eq(4).show();
            //                $(".tright-ul li").eq(3).find("a").eq(0).text(json.username);
            //                $(".headed i").text("(" + json.cartcount + ")");
            //            }
            //            else {
            //                $(".tright-ul li").eq(1).show();
            //                $(".tright-ul li").eq(2).show();
            //            }
            //        });
            //    });
        </script>
        <!--头部-->
        <div class="cmain">
            <div class="headtop">
                <!--头部左边-->
                <div class="top-left fl">
                    <a title="Darry Ring" href="index"> <img width="187" height="42" alt="Darry Ring官网" src="images/logo.png" /> </a>
                    <span style="font-weight: normal;">求婚钻戒领导品牌</span>
                </div>
                <!--头部左边end-->
                <!--头部右边-->
                <div class="top-right fr">
                    <!--登录注册-->
                    <ul class="tright-ul fl">
                        <div id="ctl00_ucheader_pllogin1">
                            <c:choose>
                                <c:when test="${login.petname eq null}">
                                    <li><a><span id="ctl00_ucheader_lit">${login.uname}</span></a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a><span id="ctl00_ucheader_lit">${login.petname}</span></a></li>
                                </c:otherwise>
                            </c:choose>

                            <li> <a href="javascript:logout()" rel="nofollow">退出</a><em>|</em> </li>
                            <li><a target="black" rel="nofollow" href="member_index.html">我的DR</a><em>|</em></li>
                            <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="cart.html">购物车</a><i>(0)</i></li>
                        </div>
                    </ul>
                    <!--语言选择-->
                    <ul class="langruge-ul fr">
                        <li><a target="_blank" href="index.html/en">English</a></li>
                    </ul>
                    <!--搜索框-->
                    <div style="display:none;" class="search">
                        <input type="text" placeholder="求婚钻戒" class="txt1" />
                        <div onClick="showSearch()" class="icon toser">
                        </div>
                    </div>
                </div>
                <!--头部右边end-->
            </div>
        </div>
        <!--头部end-->
        <!--导航-->
        <div class="nav">
            <div class="cmain">
                <!--导航的左边-->
                <ul class="nav-ul fl">
                    <li><a href="index.html">首页</a> </li>
                    <li><a href="brand.html">品牌文化</a> </li>
                    <!--
                         <li><a href="/pinkdiamond.aspx" target="_blank">高级定制</a>
                             <div class="nav-div">
                                 <div class="navdiv-right">
                                     <p>
                                         <a href="/pinkdiamond.aspx" target="_blank">稀世粉钻系列</a></p>
                                 </div>
                                 <div class="navdiv-left">
                                     <h3>
                                         NEW</h3>
                                     <img src="images/02wj.jpg" width="138" height="97" />
                                     <div class="more_cp">
                                         <a href="/pinkdiamond.aspx" target="_blank">> 了解该系列产品</a>
                                     </div>
                                 </div>
                             </div>
                         </li>-->
                    <li><a style="font-family:arial" href="lists.html">Darry Ring 求婚钻戒</a>
                        <div class="nav-div">
                            <div class="navdiv_top">
                                <div class="navdiv-right">
                                    <p> <a href="lists.html"> 查看所有款</a></p>
                                    <p> <a href="/pinkdiamond.aspx">稀世粉钻系列</a></p>
                                    <p> <a href="/dr_series/12_22.html">Forever系列</a></p>
                                    <p> <a href="/dr_series/11_20.html">My Heart系列</a></p>
                                    <p> <a href="/dr_series/16_30.html">True Love系列</a></p>
                                    <p> <a href="/dr_series/15_28.html">I Swear系列</a></p>
                                    <p> <a href="/dr_series/13_24.html">Just you系列</a></p>
                                </div>
                                <div class="navdiv-left">
                                    <h3> NEW</h3>
                                    <a href="/darry_ring/349.html"> <img width="138" height="97" alt="2克拉钻戒价格_E色EX切工VVS2净度_True Love系列 奢华款 _Darry Ring求婚钻戒 戴瑞珠宝官网" src="images/03wj.jpg" /></a>
                                    <div class="more_cp">
                                        <a href="/darry_ring/349.html">&gt; 了解该系列产品</a>
                                    </div>
                                </div>
                            </div>
                            <div class="navdiv_bottom"></div>
                        </div> </li>
                    <li><a style="font-family:arial" href="lists.html">Darry Ring 爱的礼物</a>
                        <div class="nav-div">
                            <div class="navdiv_top">
                                <div class="navdiv-right">
                                    <p> <a href="lists.html">查看所有</a></p>
                                    <p> <a href="/dr_phonics">对戒</a></p>
                                    <p> <a href="/jewelry_2">男戒</a></p>
                                    <p> <a href="/jewelry_4">吊坠</a></p>
                                    <p> <a href="/jewelry_5">项链</a></p>
                                    <p> <a href="/jewelry_8">手链</a></p>
                                    <p> <a href="/jewelry_6">耳钉/耳环</a></p>
                                </div>
                                <div class="navdiv-right special_right noborder">
                                    <p> <a href="/j_series/22_12.html">Forever系列</a></p>
                                    <p> <a href="/j_series/20_11.html">My Heart系列</a></p>
                                    <p> <a href="/j_series/24_13.html">Just You系列</a></p>
                                    <p> <a href="/j_series/30_16.html">True Love系列</a></p>
                                    <p> <a href="/j_series/28_15.html">I Swear系列</a></p>
                                    <div class="more_cp">
                                        <a href="lists.html">&gt; 查看所有款</a>
                                    </div>
                                </div>
                            </div>
                            <div class="navdiv_bottom"></div>
                        </div> </li>
                    <li><a href="question.html">常见问题</a></li>
                </ul>
                <!--导航的右边-->
                <ul class="nav-right fr">
                    <li class="lipos"><em></em><a href="active.html">最新活动</a> <i class="icon"></i>
                        <div class="theright_div" style="display: none;">
                            <div class="navdiv_top">
                                <div class="navright_div fl">
                                    <h3> 小时代4陆烧林萧求婚钻戒， </h3>
                                    <p> Darry Ring钻戒顶级定制！</p>
                                    <div class="more_cp">
                                        <a href="/xiaoshidai4.html">&gt; 点击了解详细</a>
                                    </div>
                                </div>
                                <div class="navleft_div fl">
                                    <a href="/xiaoshidai4.html"> <img width="187" height="163" alt="" src="images/xsdcat.jpg" /></a>
                                </div>
                            </div>
                            <div class="navdiv_bottom"></div>
                        </div> </li>
                </ul>
            </div>
        </div>
        <!--导航end-->
        <script type="text/javascript">
            function logout() {
                var r = window.confirm('确定退出吗？')
                if (r == true) {
                    x = "您按了确认！";
                    $.get(
                        "user/exitUser",
                        function (data) {
                            if (data == "1") {
                                window.location.href = "login";
                            } else {
                                x = "您按了取消！";

                            }
                        });
                }
            }
        </script>
        <div class="cort">
            <!--遮罩-->
            <div class="backall">
            </div>
            <!--遮罩end-->
            <!--钻戒页面中间-->
            <div class="cort">
                <div class="tobuy cmain">
                    <div class="zbk_top spalid">
                        <span>您当前的位置：</span>
                        <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="index.html">${comm.seres}</a> </span><span> <em>&gt;</em> </span><span> <a target="_blank" href="lists.html">珠宝饰品</a> </span><span> <em>&gt;</em> </span><span> <a target="_blank" href="/jewelry_4">吊坠</a> </span><span> <em>&gt;</em> </span><span> <span>${comm.cname}</span> </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
                    </div>
                    <!--购买页中间-->
                    <div class="buy_cort">
                        <script type="text/javascript">
                            /*收藏事件*/
                            var favoritesEvent = function () { };
                            $(function () {
                                try {
                                    favoritesEvent = function () {
                                        var _self = this;
                                        $(_self).unbind("click");
                                        var url = window.location.href;
                                        var arr = url.split("/");
                                        url = arr[arr.length - 1].toString();
                                        url = url.substring(0, url.indexOf(".html"));
                                        var price = $(".byright_top span").text();
                                        price = price.substr(1);
                                        $.get("/nAPI/favorites.ashx?action=add&pid=404&myParm=" + url + "&price=" + price, function (msg) {
                                            $(_self).click(favoritesEvent);

                                            if (msg != "") {
                                                alert(msg);
                                            }
                                            else {
                                                favoritesCss(true);
                                                alert("收藏成功。")
                                            }
                                        }, "html");
                                    };
                                }
                                catch (e) { }
                                $(".share_sc").click(function () {
                                    //收藏
                                    $.get(
                                        "commdity/shoucang/${comm.c_id}",
                                        function (data) {
                                            if(data==="success"){
                                                alert("收藏成功");
                                            }else if(data==="fail"){
                                                alert("收藏失败");
                                            }
                                        }
                                    )
                                });

                            });

                        </script>
                        <!--购买页中间的左边图片-->
                        <div class="buycort_left fl">
                            <ul class="bc_left">
                                <li class="li_border"> <img src="images/${comm.image.filename}" alt="锁住一生 LOCK套链 0.006 G-I" /> </li>
                                <li> <img src="images/20141203164814cbaa761ecb.jpg" alt="锁住一生 LOCK套链 0.006 G-I" /> </li>
                                <li> <img src="images/201409031259093e45b5ecf0.jpg" alt="锁住一生 LOCK套链 0.006 G-I" /> </li>
                                <li> <img src="images/20150707144116ede2ed910a.jpg" alt="锁住一生 LOCK套链 0.006 G-I" /> </li>
                            </ul>
                            <!--上下按钮-->
                            <div class="top"></div>
                            <div class="bottom"></div>
                        </div>
                        <!--购买页中间的左边图片end-->
                        <!--购买页中间的中间图片-->
                        <div class="buycort_center fl">
                            <ul class="ul_center">
                                <li id="magnifier2083" style="display: list-item;"> <img src="images/${comm.image.filename}" alt="锁住一生 LOCK套链 0.006 G-I" /> <span style="position: absolute; left: 248px; top: 248px; display: none; width: 150px; height: 150px; background: rgb(153, 153, 153) none repeat scroll 0% 0%; border: 1px solid rgb(0, 0, 0); cursor: move; opacity: 0.4;"></span>
                                    <div style="position: absolute; overflow: hidden; width: 300px; height: 300px; top: 0px; right: -385px; border: 1px solid rgb(204, 204, 204); z-index: 99998; display: none;">
                                        <img src="images/201502031541470f549eecb4.jpg" style="position: absolute; left: -498px; top: -498px; width: 800px; height: 800px;" />
                                    </div></li>
                                <li id="magnifier2084"> <img src="images/20141203164814cbaa761ecb.jpg" alt="锁住一生 LOCK套链 0.006 G-I" /> </li>
                                <li id="magnifier2085"> <img src="images/201409031259093e45b5ecf0.jpg" alt="锁住一生 LOCK套链 0.006 G-I" /> </li>
                                <li id="magnifier2086"> <img src="images/20150707144116ede2ed910a.jpg" alt="锁住一生 LOCK套链 0.006 G-I" /> </li>
                            </ul>
                            <div class="kzyl"></div>
                            <!--右按钮-->
                            <div class="big_next"></div>
                            <!--收藏分享-->
                            <div class="share">
                                <span class="share_sc fl">收藏商品</span>
                                <!-- JiaThis Button BEGIN -->
                                <div class="jiathis_style fl">
                                    <span class="jiathis_txt">分享到：</span>
                                    <a class="jiathis_button_qzone" title="分享到QQ空间"><span class="jiathis_txt jtico jtico_qzone"></span></a>
                                    <a class="jiathis_button_tsina" title="分享到新浪微博"><span class="jiathis_txt jtico jtico_tsina"></span></a>
                                    <a class="jiathis_button_tqq" title="分享到腾讯微博"><span class="jiathis_txt jtico jtico_tqq"></span></a>
                                    <a class="jiathis_button_renren" title="分享到人人网"><span class="jiathis_txt jtico jtico_renren"></span></a>
                                    <a target="_blank" class="jiathis jiathis_txt jtico jtico_jiathis" href="http://www.jiathis.com/share"></a>
                                    <a class="jiathis_counter_style"><span class="jiathis_button_expanded jiathis_counter jiathis_bubble_style" id="jiathis_counter_46" title="累计分享18次">18</span></a>
                                </div>
                                <script charset="utf-8" src="js/jia.js" type="text/javascript"></script>
                                <script charset="utf-8" src="js/plugin.client.js" type="text/javascript"></script>
                                <!-- JiaThis Button END -->
                            </div>
                            <!--收藏分享end-->
                        </div>
                        <!--购买页中间的中间图片end-->
                        <!--购买页中间的右边购买选项-->
                        <div class="buycort_right fr">
                            <!--钻戒-->
                            <div class="byright_top">
                                <p>${comm.cname} [${comm.newcid}]</p>
                                <p> <span>&yen;${comm.price}</span> </p>
                                <div class="byright_top-xq">
                                    <i>最近售出：${comm.sales.lately}</i>
                                    <i>用户评论：${comm.comments.size()}</i>
                                    <i>收藏人气：${comm.shoucangs.size()}</i>
                                </div>
                            </div>
                            <!--钻戒end-->
                            <!--参数-->
                            <div class="pho_cs" id="ctl00_content_zbDiv">
                                <p> <span>尺寸：</span> <i>${comm.csize}</i> </p>
                                <p id="ctl00_content_zDiamondDiv"> <span>钻石：</span> <i>主钻${comm.quantity}颗</i> <i>0${comm.weight}克拉/颗</i> </p>
                            </div>
                            <!--参数end-->
                            <!--选择材质刻字等-->
                            <div class="byright_thr">
                                <!--第一行-->
                                <script type="text/javascript">
                                    var MaterialChoosedEvent = function (m,p) { };
                                    $(function () {
                                        $("#materialDiv i").click(function () {
                                            //alert("222");
                                            MaterialChoosedEvent($(this).text(), parseFloat($(this).attr("value")));
                                        });
                                        var w = $(".border_cs-td4 em").eq(0).text();
                                        $("#materialDiv i").eq(0).click();
                                        $("#materialDiv i").eq(0).click(function() {
                                            $(".border_cs-td4 em").eq(0).text(w);
                                        });

//        var m = $("#materialDiv i").eq(1).text();
//        $("#materialDiv i").eq(1).click(function () {
//            if (m=="PT950") {
//                var ww = w * 1.375;
//                $(".border_cs-td4 em").eq(0).text(ww);
//            }
//
//        });

                                    });
                                </script>
                                <div id="materialDiv" class="thr_first">
                                    <span>材质：</span>
                                    <i value="5920.00" class="iborder">${comm.texture}</i>
                                </div>
                                <!--第二行-->
                                <div class="thr_secound">
                                    <span>数量：</span>
                                    <select> <option>1</option> </select>
                                </div>
                            </div>
                            <!--选择材质刻字等end-->
                            <p class="thered_word">中国大陆用户付款后15个工作日内可收到货品,其它地区请咨询客服。</p>
                            <!--购买选项-->
                            <div id="addCa" class="button buy_button">
                                <div title="购买darry ring钻戒" class="bt1">
                                    <span>加入购物车</span>
                                </div>
                                <div title="把darry ring加入购物车" class="bt2">
                                    <span>立即购买</span>
                                </div>
                            </div>
                        </div>
                        <!--购买页中间的右边end-->
                    </div>
                    <!--购买页中间end-->
                </div>
                <script type="text/javascript" language="javascript">
                    $(function () {
                        CommentLoadEvent = function (datacount) {
                            $(".gdnav_ul #commentDataCount").text("(" + datacount + ")");
                        };

                    });
                </script>
                <script>
                    function addy(id) {

                        $.post("/API/ProductAPI.ashx", { action: 'addy', id: id }, function(data) {
                            $("#addy" + id).text('(' + data + ')是');

                        });
                    }
                    function addn(id) {

                        $.post("/API/ProductAPI.ashx", { action: 'addn', id: id }, function (data) {
                            $("#addn" + id).text('(' + data + ')否');
                        });
                    }
                </script>
                <!--小导航-->
                <div class="allthenav">
                    <!--导航-->
                    <div class="gd_nav">
                        <ul class="gdnav_ul">
                            <li class="gdnav_sp"> <span>商品详情</span> </li>
                            <li> <span>最新评论<em id="commentDataCount">${comm.comments.size()}</em></span> </li>
                            <li> <span>如何购买</span> </li>
                            <li> <span>常见问答</span> </li>
                            <li> <span>售后服务</span> </li>
                        </ul>
                    </div>
                    <!--导航end-->
                    <!--导航下的线条-->
                    <div class="gd_nav-line"></div>
                    <!--导航下的线条end-->
                </div>
                <!--小导航end-->
                <!--导航下的所有-->
                <div class="sy_xx">
                    <!--商品详情-->
                    <div style="display:block" id="wrap" class="thing_wrap xqbuy_it cmain">
                        <!--参数详情加图片-->
                        <div class="xq_it cmain">
                            <!--参数显示-->
                            <div class="border_cs">
                                <table cellspacing="0" cellpadding="0" border="0" class="border_cs-table">
                                    <tbody>
                                    <tr>
                                        <td class="border_cs-td1">款式信息</td>
                                        <td class="border_cs-td2"> <span>产品编号：</span> <em>${comm.newcid}</em> </td>
                                        <td class="border_cs-td3"> <span>证书类型：</span> <em>${comm.certi}</em> </td>
                                        <td class="border_cs-td5"> <span>材 质：</span> <em>${comm.texture}</em> </td>
                                        <td class="border_cs-td6">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="border_cs-td1">钻石信息</td>
                                        <td class="border_cs-td2"> <span>总钻重量：</span> <em>0${comm.witone}</em> </td>
                                        <td class="border_cs-td3"> <span>单钻重量：</span> <em>${comm.weight}</em> </td>
                                        <td class="border_cs-td4"> <span>钻石数量：</span> <em>${comm.quantity}</em> </td>
                                    </tr>
                                    <tr>
                                        <td class="border_cs-td1"></td>
                                        <td class="border_cs-td4"> <span>净 度：</span> <em>${comm.neatness}</em> </td>
                                        <td class="border_cs-td5"> <span>颜 色：</span> <em>${comm.colour}</em> </td>
                                        <td class="border_cs-td6"> <span>切 工：</span> <em>${comm.cut}</em> </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--参数显示end-->
                            <!--产品详情图片-->
                            <div class="allphoto">
                                <p> <img width="980" height="240" src="images/2015012018452690c00b5480.jpg" alt="" /><img width="980" height="224" src="images/201501201845439d43fc7870.jpg" alt="" /><img width="980" height="244" src="images/2015012018455253c9e31d8e.jpg" alt="" /><img width="980" height="306" src="images/201501201846053c8eb0add7.jpg" alt="" /><img width="980" height="223" src="images/201501201846305e6e09653c.jpg" alt="" /><img width="980" height="347" src="images/201501201846382e6ceb30c5.jpg" alt="" /><img width="980" height="423" src="images/20150120184722a46183360f.jpg" alt="" /><img width="980" height="244" src="images/201501211054216133fcca94.jpg" alt="" /><img width="980" height="292" src="images/201501201847376210e9b59b.jpg" alt="" /><img width="980" height="627" src="images/20150120184745d54c001d5c.jpg" alt="" /><img width="980" height="483" src="images/2015012018475746eefc0aca.jpg" alt="" /><img width="980" height="294" src="images/2015012018480576fed37584.jpg" alt="" /><img width="980" height="384" src="images/201501201848124708fa4359.jpg" alt="" /><img width="980" height="283" src="images/20150120184913353df5c1de.jpg" alt="" /><img width="980" height="176" src="images/20150120184922187f1ab334.jpg" alt="" /><img width="980" height="196" src="images/20150120184930130cbc3935.jpg" alt="" /><img width="980" height="291" src="images/20150120184941a685f99b28.jpg" alt="" /><img width="980" height="160" src="images/201501201849490a77d2f900.jpg" alt="" /><img width="980" height="194" src="images/20150120184957b2e66540f5.jpg" alt="" /><img width="980" height="268" src="images/201501201850057d164a24a8.jpg" alt="" /><img width="980" height="173" src="images/201501201850148218920af1.jpg" alt="" /></p>
                            </div>
                            <!--产品详情图片end-->
                        </div>
                        <!--参数详情加图片end-->
                        <!--评论页开始-->
                        <!--评论页结束-->
                    </div>
                    <!--商品详情end-->
                    <!--最新评论-->
                    <!--评论页-->
                    <div id="wrap" class="xq_it xqbuy_it cmain">
                        <script>
                            var CommentLoadEvent = function () { };
                            var CommentCurrentNum = 1;
                            function CommentLoadData(currentPageNum) {
                                $.get("/nAPI/Comment.aspx?pagenum=" + currentPageNum + "&pid=404", function (data) {
                                    $("#commentContent").empty();
                                    $("#commentContent").html(data);
                                    $("#countpl").text(CommentDataCount);
                                    $("#commentpnum").text(currentPageNum + "/" + CommentPageCount);
                                    CommentCurrentNum = currentPageNum;
                                    __CurrentPagingComment.ReCreate(CommentPageCount, currentPageNum);
                                    CommentLoadEvent(CommentDataCount);
                                });
                            }
                            $(function () {
                                __CurrentPagingComment.CustomChanged = function (num) {
                                    CommentLoadData(num);
                                };
                                setTimeout(function () {
                                    CommentLoadData(CommentCurrentNum);
                                },300);
                            });


                            function CommentToNext() {
                            $.get(
                                ""

                            )
                                if (CommentPageCount >= (CommentCurrentNum + 1)) {
                                    __CurrentPagingComment.Next();
                                }
                            }
                        </script>
                        <!--评论页-->
                        <div class="ask cmain">
                            <!--别人的评论-->
                            <div class="talk_it">
                                <!--new评论标题-->
                                <div class="talkit_top">
                                    <div class="talktop_left">
                                        最新评论
                                    </div>
                                </div>
                        <!--每一条评论-->
                            <!--每一条评论左边-->
                        <c:forEach items="${comm.comments}" var="comment">
                            <div class="every_talk">
                            <div class="evertalk_right fl" id="setTab">
                                <span>${comment.content}</span>
                            </div>
                            <!--每一条评论左边end-->
                            <!--每一条评论左边-->
                            <div class="evertalk_left fr">
                                <!--星星-->
                                <p class="star"> </p>
                                <div class="name_date">
                                    <p>${comment.u_id}</p>
                                    <p>${comment.ctime}</p>
                                </div>
                            </div>
                            <!--每一条评论左边end-->
                        </div>
                        </c:forEach>
                            <div id="commentContent">
                    </div>
                        <div class="talkit_top">
                                    <div class="bt2 fl">
                                        <a target="_blank" href="/member/myevaluate.html">我要评论</a>
                                    </div>
                                    <div class="talktop_left fr">
                                        <span>共<i id="countpl">${comm.comments.size()}</i>条评论</span>
                                        <em>|</em>
                                        <span id="commentpnum">当前显示第${num}页</span>
                                        <span onClick="CommentToNext();" class="next_page">下一页</span>
                                    </div>
                                </div>
                                <!--评论数目end-->
                            </div>
                            <!--别人的评论end-->

                            <div class="paging_all" id="ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pagingDiv">
                                <div class="paging_all-cort">
                                    <ul class="paging fl">
                                        <li class="pli pag_gray">&lt;&lt;上一页</li>
                                        <li class="pag_gray">1</li>
                                        <li class="pli2 pag_gray">下一页&gt;&gt;</li>
                                    </ul>
                                    <p class="pag_p fl"> <span>共1页，到第</span> <input type="text" class="pag_txt" id="ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pag_txt" name="ctl00$content$ucrelatedinfo$uccommnet$ucpaging$pag_txt" />页 <input type="button" class="pag_bt" onClick="__CurrentPagingComment.PageIndexChaned($('#ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pag_txt').val());$('#ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pag_txt').val('');" value="确定" /> </p>
                                </div>
                            </div>
                            <!--分页end-->
                            <!--分页end-->
                        </div>
                        <!--评论页end-->
                    </div>
                    <!--评论页end-->
                    <!--最新评论end-->
                    <!--如何购买-->
                    <div id="wrap" class="xq_it xqbuy_it cmain">
                        <div>
                            <img width="980" height="723" alt="" src="images/2014111404094563e11107a1.jpg" />
                        </div>
                    </div>
                    <!--如何购买end-->
                    <!--常见问答-->
                    <div id="wrap" class="xq_it xqbuy_it cmain">
                        <script>







                            var ComLoadEvent = function () { };
                            var ComCurrentNum = 1;
                            function ComLoadData(currentPageNum) {
                                $.get("/nAPI/ComQuestion.aspx?pagenum=" + currentPageNum, function (data) {
                                    $("#questionContent").empty();
                                    $("#questionContent").html(data);
                                    $(".count").text(ComDataCount);
                                    $("#compnum").text(currentPageNum + "/" + ComPageCount);
                                    ComCurrentNum = currentPageNum;
                                    __Question.ReCreate(ComPageCount, currentPageNum);
                                    ComLoadEvent(ComPageCount);
                                });
                            }
                            $(document.body).ready(function () {
                                __Question.CustomChanged = function (num) {
                                    ComLoadData(num);
                                };
                                ComLoadData(ComCurrentNum);
                            });
                            function ComToNext() {
                                if (ComPageCount >= (ComCurrentNum + 1)) {
                                    __Question.Next();
                                }
                            }
                        </script>
                        <div class="xq_it cmain">
                            <div class="talk_it">
                                <!--new提问标题-->
                                <div class="talkit_top">
                                    <div class="talktop_left">
                                        常见问答
                                    </div>
                                </div>
                                <div id="questionContent">
                                    <div class="every_talk">
                                        <!--每一条评论左边-->
                                        <div class="question_left fl">
                                            <p> <i></i> <span> <span style="margin-top:8px;">Q：哪些电商平台可以购买到DR正品？</span> </span> </p>
                                            <p class="answer"> <i></i> <span> </span></p>
                                            <p> <span style="margin-top:8px;">A：戴瑞目前开通电商平台有：亚马逊、京东、天猫、一号店等电商平台？</span></p>
                                            <p>&nbsp; </p>
                                            <p> <span style="margin-top:8px;"><a href="http://darryring.tmall.com/?spm=a220o.1000855.1997427721.d4918089.bGtU16"><img width="201" height="85" src="images/20150707101641f9d958efff.jpg" alt="" /></a>&nbsp;<a href="http://search.jd.com/search?keyword=%E7%8F%A0%E5%AE%9D&amp;enc=utf-8&amp;qrst=1&amp;ps=addr&amp;rt=1&amp;stop=1&amp;ev=exbrand_DR%20darryring%40&amp;uc=0"><img width="201" height="85" src="images/2015070710170180545692fd.jpg" alt="" /></a>&nbsp;<a href="http://list.yhd.com/c0-0-0/b969402-30038/a-s1-v4-p1-price-d0-f0-m1-rt0-pid-mid0-k%E7%8F%A0%E5%AE%9D/"><img width="201" height="85" src="images/20150707101711e7690bde7f.jpg" alt="" /></a>&nbsp;<a href="http://www.amazon.cn/s/ref=sr_nr_i_0?fst=as%3Aoff&amp;rh=k%3ADarry+Ring%2Ci%3Ajewelry&amp;keywords=Darry+Ring&amp;ie=UTF8&amp;qid=1436234715"><img width="201" height="85" src="images/20150707101722a3e63ffc72.jpg" alt="" /></a></span></p>
                                            <p></p>
                                        </div>
                                        <!--每一条评论左边end-->
                                        <!--每一条评论右边-->
                                        <div class="question_right fr">
                                            <p>该问答是否对您有帮助？<span onClick="addy(37)" id="addy37">(1)是</span> <span onClick="addn(37)" id="addn37">(1)否</span></p>
                                        </div>
                                        <!--每一条评论右边end-->
                                    </div>
                                    <div class="every_talk">
                                        <!--每一条评论左边-->
                                        <div class="question_left fl">
                                            <p> <i></i> <span> <span style="margin-top:8px;">Q：网上购买，如果手寸不合适或者想要修改刻字怎么办阿？</span> </span> </p>
                                            <p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：小戴非常理解您的顾虑，请您放心。DR支持常规手寸范围内终身免工费修改手寸或刻字的呢。</span> 注：女士常规手寸范围（8-15），男士常规手寸范围（15-22）；刻字范围（5个汉字/10个英文字母）</span></p>
                                            <p></p>
                                        </div>
                                        <!--每一条评论左边end-->
                                        <!--每一条评论右边-->
                                        <div class="question_right fr">
                                            <p>该问答是否对您有帮助？<span onClick="addy(36)" id="addy36">(4)是</span> <span onClick="addn(36)" id="addn36">(1)否</span></p>
                                        </div>
                                        <!--每一条评论右边end-->
                                    </div>
                                    <div class="every_talk">
                                        <!--每一条评论左边-->
                                        <div class="question_left fl">
                                            <p> <i></i> <span> <span style="margin-top:8px;">Q：只能购买一次，如果以后款式不喜欢了怎么办？</span> </span> </p>
                                            <p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：请您放心，DR支持每年一次免工费更换款式/钻石升级服务的呢。您届时联系官网客服协助您进行换款申请即可哦。</span> </span> </p>
                                        </div>
                                        <!--每一条评论左边end-->
                                        <!--每一条评论右边-->
                                        <div class="question_right fr">
                                            <p>该问答是否对您有帮助？<span onClick="addy(35)" id="addy35">(20)是</span> <span onClick="addn(35)" id="addn35">(1)否</span></p>
                                        </div>
                                        <!--每一条评论右边end-->
                                    </div>
                                    <div class="every_talk">
                                        <!--每一条评论左边-->
                                        <div class="question_left fl">
                                            <p> <i></i> <span> <span style="margin-top:8px;">Q：购买了Darry Ring的戒指不满意可以退货吗？</span> </span> </p>
                                            <p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：您好，DR支持您收到货品后15天内无理由退换货的哦。你收到商品如果不是十分满意，可以联系客服选择更换款式或是退货处理的。但因DR都是定制商品，如非质量原因申请退货，则需要扣除一定的定制费用。 注：扣费标准请参考index.html/help_se/84.html</span> </span> </p>
                                        </div>
                                        <!--每一条评论左边end-->
                                        <!--每一条评论右边-->
                                        <div class="question_right fr">
                                            <p>该问答是否对您有帮助？<span onClick="addy(34)" id="addy34">(25)是</span> <span onClick="addn(34)" id="addn34">(1)否</span></p>
                                        </div>
                                        <!--每一条评论右边end-->
                                    </div>
                                    <div class="every_talk">
                                        <!--每一条评论左边-->
                                        <div class="question_left fl">
                                            <p> <i></i> <span> <span style="margin-top:8px;">Q：Darry Ring戒指内可以刻字吗？</span> </span> </p>
                                            <p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：您好，DR戒指类产品均支持免费刻字服务（刻字范围：5个汉字/10个英文字母）</span> </span> </p>
                                        </div>
                                        <!--每一条评论左边end-->
                                        <!--每一条评论右边-->
                                        <div class="question_right fr">
                                            <p>该问答是否对您有帮助？<span onClick="addy(33)" id="addy33">(86)是</span> <span onClick="addn(33)" id="addn33">(1)否</span></p>
                                        </div>
                                        <!--每一条评论右边end-->
                                    </div>
                                    <div class="every_talk">
                                        <!--每一条评论左边-->
                                        <div class="question_left fl">
                                            <p> <i></i> <span> <span style="margin-top:8px;">Q：收到后如果级别跟我选的不一样怎么处理？</span></span> </p>
                                            <p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：您好，定制中心都是按照您挑选的钻石级别来帮您定制，复检的结果如果出现不符，那么您是可以无条件退回给我们，并由我们来承担复检的费用，以及邮寄的费用。</span> </span> </p>
                                        </div>
                                        <!--每一条评论左边end-->
                                        <!--每一条评论右边-->
                                        <div class="question_right fr">
                                            <p>该问答是否对您有帮助？<span onClick="addy(31)" id="addy31">(566)是</span> <span onClick="addn(31)" id="addn31">(384)否</span></p>
                                        </div>
                                        <!--每一条评论右边end-->
                                    </div>
                                    <div class="every_talk">
                                        <!--每一条评论左边-->
                                        <div class="question_left fl">
                                            <p> <i></i> <span> <span style="margin-top:8px;">Q：有哪些售后服务？</span> </span> </p>
                                            <p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：DR支持终身免工费修改手寸/刻字、收到货品后15天无理由退换货服务、每年一次免工费更换款式/钻石升级、终身免工费保养与维护。</span> </span> </p>
                                        </div>
                                        <!--每一条评论左边end-->
                                        <!--每一条评论右边-->
                                        <div class="question_right fr">
                                            <p>该问答是否对您有帮助？<span onClick="addy(30)" id="addy30">(549)是</span> <span onClick="addn(30)" id="addn30">(196)否</span></p>
                                        </div>
                                        <!--每一条评论右边end-->
                                    </div>
                                    <div class="every_talk">
                                        <!--每一条评论左边-->
                                        <div class="question_left fl">
                                            <p> <i></i> <span> <span style="margin-top:8px;">Q：可以保证在我要求的使用时间之前到达吗？</span></span> </p>
                                            <p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：非常抱歉，快递运输过程中，导致延迟的因素很多，恶劣的天气或者航班延误、或者节假日个别快递点调休，因此我们无法百分之百的保证在您的期望日抵达。如出现此类情况，请您包涵及谅解，根据以往经验99%的订单会准时到达。）</span> </span> </p>
                                        </div>
                                        <!--每一条评论左边end-->
                                        <!--每一条评论右边-->
                                        <div class="question_right fr">
                                            <p>该问答是否对您有帮助？<span onClick="addy(29)" id="addy29">(251)是</span> <span onClick="addn(29)" id="addn29">(185)否</span></p>
                                        </div>
                                        <!--每一条评论右边end-->
                                    </div>
                                </div>
                                <!--new评论标题end-->
                                <!--评论数目-->
                                <div class="talkit_top">
                                    <div class="talktop_left fr">
                                        <span>共<i class="count">36</i>条问答</span>
                                        <em>|</em>
                                        <span id="compnum">1/5</span>
                                        <span onClick="ComToNext();" class="next_page">下一页</span>
                                    </div>
                                </div>
                                <!--评论数目end-->
                                <!--联系客服-->
                                <div class="talkit_bottom">
                                    <div class="talkit_top-lx fr">
                                        <span class="fl">更多疑问咨询请联系我们，欢迎留下您宝贵的意见。</span>
                                        <div onClick="showxiaon()" class="bt2">
                                            <span>联系客服</span>
                                        </div>
                                    </div>
                                </div>
                                <!--联系客服end-->
                            </div>

                            <div class="paging_all" id="ctl00_content_ucrelatedinfo_ucq_ucpaging_pagingDiv">
                                <div class="paging_all-cort">
                                    <ul class="paging fl">
                                        <li class="pli pag_gray">&lt;&lt;上一页</li>
                                        <li class="pag_gray">1</li>
                                        <li>2</li>
                                        <li>3</li>
                                        <li>4</li>
                                        <li>5</li>
                                        <li class="pli2">下一页&gt;&gt;</li>
                                    </ul>
                                    <p class="pag_p fl"> <span>共5页，到第</span> <input type="text" class="pag_txt" id="ctl00_content_ucrelatedinfo_ucq_ucpaging_pag_txt" name="ctl00$content$ucrelatedinfo$ucq$ucpaging$pag_txt" />页 <input type="button" class="pag_bt" onClick="__Question.PageIndexChaned($('#ctl00_content_ucrelatedinfo_ucq_ucpaging_pag_txt').val());$('#ctl00_content_ucrelatedinfo_ucq_ucpaging_pag_txt').val('');" value="确定" /> </p>
                                </div>
                            </div>
                            <!--分页end-->
                            <!--分页end-->
                        </div>
                    </div>
                    <!--常见问答end-->
                    <!--售后服务-->
                    <div id="wrap" class="xq_it xqbuy_it cmain">
                        <div>
                            <img width="980" height="669" alt="" src="images/201411140408514e81071ba7.jpg" />&nbsp;
                        </div>
                        <div>
                            &nbsp;
                        </div>
                        <div>
                            &nbsp;
                        </div>
                    </div>
                    <!--售后服务end-->
                </div>
                <!--导航下的所有end-->
                <!--预约其他功能-->
                <div class="other_do cmain">
                    <div class="ot_all">
                        <div class="ot_left fl">
                            <img width="196" height="150" alt="Darry Ring 微信号" src="images/erwei.png" />
                            <p> 加入微信 了解品牌动态</p>
                        </div>
                        <div class="ot_left fl otherot_p">
                            <div class="thephone">
                            </div>
                            <h3> 400-01-13520</h3>
                            <p> 欢迎致电Darry Ring服务热线</p>
                            <p> 珠宝顾问为您解答任何关于购买疑问</p>
                            <p> 或钻石知识。</p>
                            <p> <a target="_blank" onClick="showxiaon()" style="cursor: pointer">&gt; 联系在线客服</a></p>
                        </div>
                        <div class="ot_left no-border fl">
                            <div class="thetaxi">
                            </div>
                            <h3> 预约到实体店</h3>
                            <select id="ctl00_content_ucrelatedinfo_ucappointment_drpListShop" name="ctl00$content$ucrelatedinfo$ucappointment$drpListShop"> <option value="-1">请选择预约实体店</option> <option value="1">深圳实体店</option> <option value="2">北京实体店</option> <option value="3">广州实体店</option> <option value="4">重庆实体店</option> <option value="7">上海实体店</option> <option value="9">武汉实体店</option> <option value="10">南京实体店</option> <option value="11">长沙实体店</option> <option value="12">天津实体店</option> <option value="13">昆明实体店</option> <option value="14">苏州实体店</option> <option value="15">大连实体店</option> <option value="16">无锡实体店</option> <option value="17">成都实体店</option> <option value="18">宁波实体店</option> </select>
                            <div class="all_txt">
                                <input type="text" value="X先生/女士" id="txtName" class="name_txt" />
                                <input type="text" value="手机号码" id="txtTel" class="phone_txt" />
                            </div>
                            <div id="btnyd" class="bt1">
                                <span>确认预约</span>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    $("#btnyd").click(function () {
                        var slect = $("#ctl00_content_ucrelatedinfo_ucappointment_drpListShop option:checked").val();
                        var name = $("#txtName").val();
                        var tel = $("#txtTel").val();

                        if (slect=="-1") {
                            alert("请选择预约门店");
                            return false;
                        }
                        if (name == "") {
                            alert("请输入姓名！");
                            return false;
                        }
                        if (!checkTel(tel)) {
                            alert("请输入正确的手机号！");
                            $("#txtTel").val("");
                            return false;
                        }

                        sendMessage(slect, tel);



                    });
                    function sendMessage(action, tel) {
                        $.get("/API/SendMessageAPI.ashx", { action: action, tel: tel }, function (data) {
                            if (contains(data, "ok", true)) {
                                alert("店铺地址发送成功！");
                                $("#txtTel").val("");
                                $("#txtName").val("");
                            }
                        });
                    }
                    function contains(string, substr, isIgnoreCase) {
                        if (isIgnoreCase) {
                            string = string.toLowerCase();
                            substr = substr.toLowerCase();
                        }
                        var startChar = substr.substring(0, 1);
                        var strLen = substr.length;
                        for (var j = 0; j < string.length - strLen + 1; j++) {
                            if (string.charAt(j) == startChar)//如果匹配起始字符,开始查找
                            {
                                if (string.substring(j, j + strLen) == substr)//如果从j开始的字符与str匹配，那ok
                                {
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                    //
                    function checkTel(tel) {
                        var mobile = /^1[3-8]+\d{9}$/;
                        return mobile.test(tel);
                    }


                </script>
                <!--预约其他功能end-->
                <!--浏览过的产品-->
                <div class="kgd_cp cmain">
                    <div class="read_it">
                        <p class="read_jl">您的浏览记录</p>
                        <ul id="u_history" class="read_ul" style="width: 1650px;">
                            <c:forEach items="${liulans}" var="liulan">
                            <li>
                                <div class="read_top">
                                    <a target="_blank" href="/jewelry/404.html" rel="nofollow"> <img src="images/${liulan.image.filename}" alt="${liulan.cname} ${liulan.minute}分${liulan.colour}" /> </a>
                                </div> <p><a target="_blank" href="/jewelry/404.html"> ${liulan.cname} ${liulan.minute}分${liulan.colour} </a></p> <p><span>￥${liulan.price}</span></p> </li>
                            </c:forEach>
                        </ul>
                        <ul style="display: none; width: 1650px;" id="u_rx" class="read_ul">
                            <li>
                                <div class="read_top">
                                    <a target="_blank" href="/darry_ring/78.html" rel="nofollow"> <img src="images/2014090119350717386d7a1e.jpg" alt="Forever系列 经典款" /> </a>
                                </div> <p><a target="_blank" href="/darry_ring/78.html"> Forever系列 经典款 </a></p> <p><span>￥25,700</span></p> </li>
                            <li>
                                <div class="read_top">
                                    <a target="_blank" href="/darry_ring/137.html" rel="nofollow"> <img src="images/20140901192917179d1ae386.jpg" alt="Forever系列 经典款" /> </a>
                                </div> <p><a target="_blank" href="/darry_ring/137.html"> Forever系列 经典款 </a></p> <p><span>￥10,200</span></p> </li>
                            <li>
                                <div class="read_top">
                                    <a target="_blank" href="/darry_ring/92.html" rel="nofollow"> <img src="images/20140901195507683ad84477.jpg" alt="Just you系列 经典款" /> </a>
                                </div> <p><a target="_blank" href="/darry_ring/92.html"> Just you系列 经典款 </a></p> <p><span>￥3,689</span></p> </li>
                            <li>
                                <div class="read_top">
                                    <a target="_blank" href="/darry_ring/168.html" rel="nofollow"> <img src="images/201502031541470f549eecb4.jpg" alt="My heart系列 奢华款" /> </a>
                                </div> <p><a target="_blank" href="/darry_ring/168.html"> My heart系列 奢华款 </a></p> <p><span>￥38,636</span></p> </li>
                            <li>
                                <div class="read_top">
                                    <a target="_blank" href="/darry_ring/387.html" rel="nofollow"> <img src="images/201412081512070b82d519cb.jpg" alt="True Love系列 典雅" /> </a>
                                </div> <p><a target="_blank" href="/darry_ring/387.html"> True Love系列 典雅 </a></p> <p><span>￥19,150</span></p> </li>
                        </ul>
                    </div>
                    <!--向左-->
                    <div style="display:block" class="read_pre"></div>
                    <div style="display:block" class="read_next"></div>
                </div>
                <!--浏览过的产品end-->
                <!--验证购买-->
                <script src="js/click_hide.js" type="text/javascript"></script>
                <script src="js/index_clear.js" type="text/javascript"></script>
                <!--验证身份框-->
                <div class="yz_password">
                    <div class="yzp_border">
                        <div class="yzpb_top">
                        </div>
                        <!--未购买过Darryring-->
                        <div style="display: none" class="yzpb_cort toyz_nobuy wgm">
                            <h3> 真爱验证</h3>
                            <h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
                            <p> <span id="ng"></span>先生 您好！</p>
                            <p> 对不起,所有的饰品需要购买过Darry Ring求婚钻戒后才可以购买!</p>
                            <p> 点击<a href="lists.html">这里</a>购买Darry Ring求婚钻戒，祝您购物愉快 ！</p>
                        </div>
                        <!--未购买过end-->
                        <!--未登陆-->
                        <div style="display: none" class="yzpb_cort toyz_buyit wdl">
                            <h3> 真爱验证</h3>
                            <h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
                            <p> 所有饰品仅限拥有Darry Ring求婚钻戒的恋人购买</p>
                            <p> 您尚未登录，无法购买请<a href="javascript:backLogin();">登录</a>/<a href="reg.html">注册</a></p>
                        </div>
                        <!--未登陆 end-->
                        <!--购买过Darry钻戒-->
                        <div style="display: none" class="yzpb_cort toyz_buyit haveDarry">
                            <h3> 真爱验证</h3>
                            <h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
                            <p> <span id="cg"></span>先生 您好！</p>
                            <p> 您已成功订购Darry Ring，所有饰品均可任意购买!</p>
                            <p> 谢谢您对Darry Ring的支持 ，祝您购物愉快。</p>
                            <div class="ts_button">
                                <div id="btnBuy" class="bt2">
                                    <span>立即购买</span>
                                </div>
                            </div>
                        </div>
                        <!--购买过Darry钻戒-->
                        <!--购买过Darry钻戒-->
                        <div style="display: none" class="yzpb_cort toyz_buyit notCart">
                            <h3> 真爱验证</h3>
                            <h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
                            <p> <span id="noCart"></span>先生 您好！</p>
                            <p> 您的购物车已存在Darry Ring钻戒，所有饰品均可任意购买!谢谢您对Darry Ring的支持 ，祝您购物愉快。</p>
                            <div class="ts_button">
                                <div id="btnbuy2" class="bt2">
                                    <span>立即购买</span>
                                </div>
                            </div>
                        </div>
                        <!--购买过Darry钻戒-->
                        <!--未付款的DR钻戒订单-->
                        <div style="display: none" class="yzpb_cort toyz_buyit" id="noPayOrder">
                            <h3> 真爱验证</h3>
                            <h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
                            <p> <span id="noPay"></span>先生 您好！</p>
                            <p>你有未付款DR求婚钻戒订单，请先付款成为DR用户才能购买饰品<br />点击<a href="member_order.html">这里</a>进行付款，祝您购物愉快！</p>
                        </div>
                        <!--未付款的DR钻戒订单-->
                        <div class="yzpb_bottom">
                        </div>
                    </div>
                    <!--close-->
                    <div class="yz_close">
                    </div>
                    <!--close end-->
                </div>
                <!--验证身份框end-->
                <script language="javascript" type="text/javascript">
                    function backLogin() {
                        var currentUrl = window.location.href;
                        window.location.href = "login.html?forward=" + currentUrl;
                    }

                    function strlength(str) { num = str.length; var arr = str.match(/[^\x00-\x80]/ig); if (arr != null) num += arr.length; return num; }
                    String.prototype.replaceAll = function (s1, s2) {
                        return this.replace(new RegExp(s1, "gm"), s2);
                    }
                    $(function () {
                        $('#addCa').click(function () {
                            var manHand = $("#ctl00_content_ddlManHandsize").val();
                            var womanHand = $("#ctl00_content_ddlWomanHandsize").val();
                            if (manHand == -1 || womanHand == -1) {
                                alert("请选择手寸。");
                                return;
                            }
                            if ($(".thr_first .iborder").text() == null || $(".thr_first .iborder").text() == "") {
                                alert("请选择材质");
                                return;
                            }
                            if ($("#manFont").length > 0) {
                                var mfontlen = strlength($("#manFont").val());
                                if (mfontlen > 10) {
                                    alert("男戒刻字数超过了10个字符。");
                                }
                            }
                            if ($("#womanFont").length > 0) {
                                var wfontlen = strlength($("#womanFont").val());
                                if (wfontlen > 10) {
                                    alert("女戒刻字数超过了10个字符。");
                                }
                            }
                            /****
                             if ($("#manFont").length > 0) {
            if (strlength($("#manFont").val().replaceAll("♥", "?")) > 8) {
            alert("男戒刻字数超过了8个字符，中文为2个字符。");
            return;
            }
            }
                             if ($("#womanFont").length > 0) {
            if (strlength($("#womanFont").val().replaceAll("♥", "?")) > 8) {
            alert("女戒刻字数超过了8个字符，中文为2个字符。");
            return;
            }
            }
                             ****/
                            if ($("#ipt_font").length > 0) {

                                if ($("#ctl00_content_ddlHandSize").val() == -1) {
                                    alert("请选择手寸。");
                                    return;
                                }

                                //                if (strlength($("#ipt_font").val().replaceAll("♥", "?")) > 8) {
                                //                    alert("刻字数超过了8个字符，中文为2个字符。");
                                //                    return;
                                //                }
                            }
                            //判断是否登录
                            if ('false' == "true") {
                                $.get("/API/DarryringYzAPI.ashx", { action: 'darryhome' }, function (data) {
                                    var json = $.parseJSON(data);
                                    if (json.Status == "true") {

                                        $(".yz_password").hide();
                                        addCartFun();
                                        return false;
                                    }
                                    else if (json.MsgCode == "NoPay") {
                                        $(".notCart").hide();
                                        $(".haveDarry").hide();
                                        $(".wgm").hide();
                                        $('.yz_password').show();
                                        $('.backall').show();
                                        $("#noPayOrder").show();
                                        $("#noPay").text(json.Name);
                                        return false;
                                    }
                                    else {

                                        //未购买
                                        //判断购物车中是否存在Darry钻戒
                                        $.get("/API/DarryringYzAPI.ashx", { action: 'cart' }, function (dat) {
                                            //购物车中不存在Darry钻戒

                                            if (dat == "false") {

                                                $(".notCart").hide();
                                                $(".haveDarry").hide();
                                                $(".wgm").show();
                                                $('.yz_password').show();
                                                $('.backall').show();

                                                return false;
                                            } else {
                                                $(".yz_password").hide();
                                                addCartFun();
                                            }
                                        });
                                        //                        $(".wgm").show();
                                        //                        $('.yz_password').show();
                                        //                        $('.backall').show();
                                        //                        alert("23");
                                    }
                                });

                            } else {
                                //未登录
                                $(".wdl").show();
                                $('.yz_password').show();
                                $('.backall').show();

                            }
                        });
                        $("#btnBuy").click(function () {
                            addCartFun();
                            $(".yz_password").hide();
                            $(".wdl").hide();
                            $(".carthave").hide();
                            $('.yz_password').hide();
                            $(".toyz_nobuy").hide();
                            $('.backall').hide();
                            $(".wgm").hide();
                            $(".notCart").hide();
                        });
                        $("#btnbuy2").click(function () {
                            addCartFun();
                        });
                        $('.yz_close').click(function () {
                            $(".yz_password").hide();
                            $(".wdl").hide();
                            $(".carthave").hide();
                            $('.yz_password').hide();
                            $(".toyz_nobuy").hide();
                            $('.backall').hide();
                            $(".wgm").hide();
                            $(".notCart").hide();
                        });

                    });
                </script>
            </div>
        </div>
        <!--底部-->
        <div class="footer">
            <!--错误-->
            <!--提示-->
            <div class="loverit_word2">
                Darry Ring严格规定男士凭身份证一生仅能定制一枚，象征男人一生真爱的最高承诺。输入身份证号码即可查询购买记录。
            </div>
            <!--提示end-->
            <div class="loverit_wrong2">
                <p>信息填写不正确，请重新输入。</p>
            </div>
            <!--错误end-->
            <!--验证身份-->
            <div class="loveit_center">
                <div class="love_doit2">
                    <div class="loverit_center2">
                        <div class="loverit_write2">
                            <label>国家/区域:</label>
                            <select id="txtArea" style="vertical-align: middle;height:22px;"> <option value="0">中国大陆</option> <option value="1">中国香港</option> <option value="2">中国澳门</option> <option value="3">中国台湾</option> </select>
                            <label>先生姓名:</label>
                            <input type="text" class="lit_txt" id="textName2" />
                            <label>身份证号码:</label>
                            <input type="text" class="lit_txt" id="textIDCard2" />
                            <span id="btnsub2"></span>
                        </div>
                    </div>
                </div>
            </div>
            <!--验证身份end-->
            <div style="clear:both"></div>
            <div class="cmain">
                <ul class="Service_ul">
                    <!--每一块li-->
                    <li>
                        <div class="Service_ul-img">
                            <a href="index.html/help_ab/51.html" rel="nofollow"></a>
                        </div> <a href="index.html/help_ab/51.html" rel="nofollow"><p>权威认证</p></a> </li>
                    <!--每一块li-->
                    <li>
                        <div class="Service_ul-img bk_2">
                            <a href="index.html/help_se/81.html" rel="nofollow"></a>
                        </div> <a href="index.html/help_se/81.html" rel="nofollow"><p> 一钻双证</p></a> </li>
                    <!--每一块li-->
                    <li>
                        <div class="Service_ul-img bk_3">
                            <a href="index.html/help_se/80.html" rel="nofollow"></a>
                        </div> <a href="index.html/help_se/80.html" rel="nofollow"> <p> 终生保养</p></a> </li>
                    <!--每一块li-->
                    <li>
                        <div class="Service_ul-img bk_4">
                            <a href="index.html/help_se/82.html" rel="nofollow"></a>
                        </div> <a href="index.html/help_se/82.html" rel="nofollow"> <p> 以小换大</p></a> </li>
                    <!--每一块li-->
                    <li>
                        <div class="Service_ul-img bk_5">
                            <a href="index.html/help_se/84.html" rel="nofollow"></a>
                        </div> <a href="index.html/help_se/84.html" rel="nofollow"> <p> 15天退换</p></a> </li>
                    <!--每一块li-->
                    <li>
                        <div class="Service_ul-img bk_6">
                            <a href="index.html/help/74.html" rel="nofollow"></a>
                        </div> <a href="index.html/help/74.html" rel="nofollow"> <p> 全国免运费</p></a> </li>
                    <!--每一块li-->
                    <li>
                        <div class="Service_ul-img bk_7">
                            <a href="index.html/help_se/83.html" rel="nofollow"></a>
                        </div> <a href="index.html/help_se/83.html" rel="nofollow"><p> 全程保险</p></a> </li>
                </ul>
                <!--服务条款-->
                <div class="service">
                    <!--二维码-->
                    <div class="erwei fl">
                        <img width="90" height="90" alt="Darry Ring 官方微信" src="images/erwei.jpg" />
                    </div>
                    <!--中间的联系方式-->
                    <div class="know_right fl">
                        <p> 24小时全国免费服务热线</p>
                        <img width="171" height="32" src="images/tel.jpg" />
                        <p class="theshare"> <span>关注我们：</span> <a class="wb" target="_blank" href="http://weibo.com/13520comcn" rel="nofollow"></a> <a class="rr" target="_blank" href="http://e.t.qq.com/DarryRing" rel="nofollow"></a> <a class="qzone" target="_blank" title="QQ空间" href="http://user.qzone.qq.com/2678181289/" rel="nofollow"></a> </p>
                    </div>
                    <!--左边的服务条款-->
                    <ul class="Service_know fr">
                        <!--每一块li-->
                        <li> <h3> 关于我们</h3> <p> <a target="_blank" href="index.html/help_ab/66.html" rel="nofollow">权威认证</a></p> <p> <a target="_blank" href="index.html/help_ab/68.html" rel="nofollow">商务合作</a></p> <p> <a target="_blank" href="index.html/help_ab/70.html" rel="nofollow">加入我们</a></p> </li>
                        <!--每一块li-->
                        <li> <h3> 关于购买</h3> <p> <a target="_blank" href="index.html/help/72.html" rel="nofollow">购买流程</a></p> <p> <a target="_blank" href="index.html/help/73.html" rel="nofollow">支付方式</a></p> <p> <a target="_blank" href="index.html/help/74.html" rel="nofollow">配送流程</a></p> </li>
                        <!--每一块li-->
                        <li> <h3> 关于退换</h3> <p> <a target="_blank" href="index.html/help/75.html" rel="nofollow">退货流程</a></p> <p> <a target="_blank" href="index.html/help/76.html" rel="nofollow">办理售后</a></p> <p> <a target="_blank" href="index.html/help_se/84.html" rel="nofollow">15天退换</a></p> </li>
                        <!--每一块li-->
                        <li> <h3> 帮助中心</h3> <p> <a target="_blank" href="index.html/help/71.html" rel="nofollow">注册流程</a></p> <p> <a href="javascript:showxiaon();" rel="nofollow">联系客服</a></p> <p> <a target="_blank" href="index.html/help/78.html" rel="nofollow">网站地图</a></p> </li>
                        <!--每一块li-->
                        <li> <h3> 服务条款</h3> <p> <a target="_blank" href="index.html/help_se/80.html" rel="nofollow">终生保养</a></p> <p> <a target="_blank" href="index.html/help_se/85.html" rel="nofollow">注册协议</a></p> <p> <a target="_blank" href="index.html/help_se/86.html" rel="nofollow">隐私声明</a></p> </li>
                        <!--每一块li-->
                        <li> <h3> DR服务</h3> <p> <a target="_blank" href="/proposelist.aspx?id=18">钻石百科</a></p> <p> <a target="_blank" href="/news/index.aspx">产品百科</a></p> <p> <a target="_blank" href="/propose.aspx">求婚指南</a></p> </li>
                    </ul>
                </div>
                <!--条文-->
                <div class="auto" id="Menu_Service">
                </div>
                <div class="tw-foot">
                    <div class="auto" id="Copyright">
                        <p> Copyright &copy; 2006-2015 www.darryring.com 深圳市戴瑞珠宝有限公司 All Rights Reserved. 粤ICP备11012085号-2.ICP经营许可证粤B2-20140279 </p>
                        <p> 中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票 </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="model" id="model">
            <div class="Prompt" id="Prompt">
            </div>
            <span id="log_uid" style="display:none"></span>
            <span id="log_uname" style="display:none"></span>
            <span id="log_orderid" style="display:none"></span>
            <span id="log_price" style="display:none"></span>
        </div>
        <script src="http://wpa.b.qq.com/cgi/wpa.php" charset="utf-8" type="text/javascript"></script>
        <!--客服(2014年8月29日)-->
        <div style="display:none" class="Ffloat_kf">
            <div class="fkf_top">
                <div style="cursor: pointer; display: none;" id="bridgehead">
                </div>
                <div id="BizQQWPA"></div>
                <div onClick="showModel(modelsever);" style="cursor: pointer;" class="qq_hover" id="qqTalk_head">
                </div>
                <div id="BizQQWPAB" class="sh">
                </div>
                <div id="bdBridge">
                    <a href="javascript:NTKF.im_openInPageChat()"> <img width="75" height="37" src="images/zx.jpg" /></a>
                </div>
            </div>
            <div class="fkf_bottom">
                <img width="92" height="82" alt="Darry Ring 官方微信" src="images/to_erwei.jpg" />
                <a href="#"> <img width="92" height="26" src="images/db.jpg" /></a>
            </div>
        </div>
        <!--新版右边客服start-->
        <!--右边漂浮悬挂大的-->
        <div class="float_big">
            <div class="floatbig_hide fr"></div>
            <div class="floatbig_center">
                <!--客服-->
                <div onClick="javascript:NTKF.im_openInPageChat();" id="Bearonline" class="floatbig_center-kf"></div>
                <!--客服end-->
                <!--定制咨询-->
                <div id="dzzxonline" class="floatbig_center-zx">
                    <a href="javascript:showModel(modelsever);"></a>
                </div>
                <!--定制咨询end-->
                <img src="images/ew.jpg" />
            </div>
        </div>
        <!--右边漂浮悬挂大的end-->
        <!--右边漂浮悬挂小的-->
        <div class="float_small">
            <div class="floatbig_show fr"></div>
            <div class="floatbig_center">
                <!--客服-->
                <div onClick="javascript:NTKF.im_openInPageChat();" class="floatsmall_center-kf fr"></div>
                <!--客服end-->
                <!--定制咨询-->
                <div class="floatsmall_center-zx fr">
                    <a href="javascript:showModel(modelsever);"></a>
                </div>
                <!--定制咨询end-->
                <!--二维码-->
                <div class="floatsmall_erwei fr">
                    <a href="#"></a>
                </div>
                <!--二维码end-->
            </div>
        </div>
        <!--右边漂浮悬挂小的end-->
        <!--返回顶部-->
        <div class="comeback"></div>
        <!--返回顶部end-->
        <!--新版右边客服end-->
        <div style="position: fixed; cursor: pointer; right: 6px; top: 289px; padding-bottom: 152px; z-index: 9999; width: 19px; height: 103px; display: none;" onClick="openserver();" id="openbnt">
            <img width="19" height="103" src="images/server_03.jpg" />
        </div>
        <div class="news_tc">
            <div class="newtc_left">
            </div>
            <div class="newtc_right">
                <span style="cursor: pointer" class="sszs">稍后再说</span>
                <span class="xzzx"><a onClick="showxiaon()" style="cursor: pointer" id="chatnow"> 现在咨询</a></span>
                <div style="cursor: pointer" class="tocclose">
                </div>
            </div>
        </div>
        <div class="mask" id="masks">
        </div>
        <div style="display:none;" class="modelsever" id="modelsever">
            <div class="cs_top">
                <div class="cs_topcenter">
                    <div style="width:300px; height:40px; line-height:40px; float:left; display:inline-block; ">
                        顾客常见疑问
                    </div>
                    <div style="width:385px; height:20px; float:left; text-align:right; padding-top:20px;">
                        <img width="55" height="9" style="cursor: pointer;" onClick="CloseMaskser()" src="images/popup_window_btn_close.gif" />
                    </div>
                </div>
            </div>
            <div class="cs_content clear">
                <ul>
                    <li onClick="showbox(1)" id="li1">官网店铺</li>
                    <li class="line">/</li>
                    <li onClick="showbox(2)" id="li2">真爱疑问</li>
                    <li class="line">/</li>
                    <li onClick="showbox(3)" id="li3">购买限制</li>
                    <li class="line">/</li>
                    <li onClick="showbox(4)" id="li4">产品疑问</li>
                    <li class="line">/</li>
                    <li onClick="showbox(5)" id="li5">关于定制</li>
                    <li class="line">/</li>
                    <li onClick="showbox(6)" id="li6">关于运输</li>
                    <li class="line">/</li>
                    <li onClick="showbox(7)" id="li7">关于售后</li>
                </ul>
                <div id="box1" class="box1">
                    <div onClick="contenttxt(1,1)" id="content_title_11" class="content_title">
                        <span style="margin-top:8px;">Q：Darry Ring 是否有实体店？</span>
                    </div>
                    <div id="content_title1_1" class="content_txt">
                        <span style="margin-top:1px;">A：DR公司总部在香港，目前内地深圳市、北京市、重庆市、广州市、上海市、武汉市、南京市、长沙市设有实体店，支持到店订购，也支持全国在线官网订购。同时目前其他一线城市公司已在考察选址阶段，将陆续开设店面。</span>
                    </div>
                    <div onClick="contenttxt(1,2)" id="content_title_12" class="content_title">
                        <span style="margin-top:8px;">Q：实体店具体位置？</span>
                    </div>
                    <div id="content_title1_2" class="content_txt">
                        <span style="margin-top:1px;">A：深圳实体店地址：深圳南山区世界之窗旁欧陆小镇4号楼Darry Ring （地铁罗宝线世界之窗I出口）深圳店联系方式：0755-86621782。<p></p> 北京实体店地址：北京东二环朝阳门桥银河SOHO中心B座负一层2-109 （朝阳门地铁G出口） 北京店联系方式：010-59576758。<p></p> 上海实体店地址：上海长宁区淮海西路570号红坊创意园区G-108栋(近虹桥路) 上海店联系方式：021-60934520。<p></p> 广州实体店地址：广州市天河区天河北路233号中信广场商场136单元 广州店联系方式：020-38836315。<p></p> 重庆实体店地址：重庆市渝中区解放碑步行街民族路188号环球金融中心（WFC）LG-B02A 重庆店联系方式：023-63710835。<p></p> 武汉实体店地址：武汉市洪山区光谷意大利风情街5号楼一层51021号 武汉店联系方式：027-87688895。<p></p> 南京实体店地址：南京市长江路288号1912街区17号楼一层 南京店联系方式：025-83613520。<p></p> 长沙实体店地址：长沙市开福区中山路589号万达百货商场2楼 长沙店联系方式：0731-83878575。<p></p> 全国400客服热线：400 01 13520。</span>
                    </div>
                    <div onClick="contenttxt(1,3)" id="content_title_13" class="content_title">
                        <span style="margin-top:8px;">Q：到店订购和官网订购的价格一致吗？</span>
                    </div>
                    <div id="content_title1_3" class="content_txt">
                        <span style="margin-top:1px;">A：DR的所有商品，到店订购和官网订购的时间周期，价格，质量及售后服务均一致。</span>
                    </div>
                    <div onClick="contenttxt(1,4)" id="content_title_14" class="content_title">
                        <span style="margin-top:8px;">Q：价格是否有折扣优惠？</span>
                    </div>
                    <div id="content_title1_4" class="content_txt">
                        <span style="margin-top:1px;">A：DR的品牌寓意为一生唯一真爱，大多是用作见证彼此求婚或结婚这一神圣时刻，所以所有商品都是常年任何节假日没有折扣活动，就像彼此一生唯一真爱的承诺及永恒的爱情，永不打折。</span>
                    </div>
                    <div onClick="contenttxt(1,5)" id="content_title_15" class="content_title">
                        <span style="margin-top:8px;">Q：为什么在官网上输入姓名身份证号后看不到款式？</span>
                    </div>
                    <div id="content_title1_5" class="content_txt">
                        <span style="margin-top:1px;">A：www.darryring.com 官网首页点击—求婚钻戒，进入页面后不需要填写任何信息，移动鼠标到最下方，就可以看到Darry Ring女戒的所有款式。</span>
                    </div>
                    <div onClick="contenttxt(1,6)" id="content_title_16" class="content_title">
                        <span style="margin-top:8px;">Q：到实体店是否可以立刻拿到戒指？</span>
                    </div>
                    <div id="content_title1_6" class="content_txt">
                        <span style="margin-top:1px;">A：您好，DR的所有商品都是需要根据您选择的款式、手寸大小及刻字信息来定制。实体店仅提供款式体验及预订，与官网购买的定制时间是一致的，可于15-20个工作日内送到或自取。</span>
                    </div>
                </div>
                <div id="box2" class="box2">
                    <div onClick="contenttxt(2,1)" id="content_title_21" class="content_title"></div>
                    <div id="content_title2_1" class="content_txt"></div>
                    <div onClick="contenttxt(2,2)" id="content_title_22" class="content_title"></div>
                    <div id="content_title2_2" class="content_txt">
                    </div>
                    <div onClick="contenttxt(2,3)" id="content_title_23" class="content_title"></div>
                    <div id="content_title2_3" class="content_txt">
                    </div>
                    <!--<div class="content_title"  onclick="contenttxt(2,4)">4、Q：LES可以购买吗？</div>
             <div class="content_txt" id="content_title2_4">A：真爱不分性别，只要确定了对方就是您这辈子的真爱，同时您愿意为此绑定自己的身份证信息，那
             么DR不会限制您追求真爱的自由，您同样是可以购买到Darry Ring的真爱女戒。

             </div>-->
                    <div onClick="contenttxt(2,4)" id="content_title_24" class="content_title"></div>
                    <div id="content_title2_4" class="content_txt">
                    </div>
                </div>
                <div id="box3" class="box3">
                    <div onClick="contenttxt(3,1)" id="content_title_31" class="content_title"></div>
                    <div id="content_title3_1" class="content_txt">
                    </div>
                    <div onClick="contenttxt(3,2)" id="content_title_32" class="content_title"></div>
                    <div id="content_title3_2" class="content_txt"></div>
                    <div onClick="contenttxt(3,3)" id="content_title_33" class="content_title"></div>
                    <div id="content_title3_3" class="content_txt"></div>
                    <div onClick="contenttxt(3,4)" id="content_title_34" class="content_title"></div>
                    <div id="content_title3_4" class="content_txt"></div>
                </div>
                <div id="box4" class="box4">
                    <div onClick="contenttxt(4,1)" id="content_title_41" class="content_title"></div>
                    <div id="content_title4_1" class="content_txt"></div>
                    <div onClick="contenttxt(4,2)" id="content_title_42" class="content_title"></div>
                    <div id="content_title4_2" class="content_txt"></div>
                    <div onClick="contenttxt(4,3)" id="content_title_43" class="content_title"></div>
                    <div id="content_title4_3" class="content_txt"></div>
                    <div onClick="contenttxt(4,4)" id="content_title_44" class="content_title"></div>
                    <div id="content_title4_4" class="content_txt"></div>
                </div>
                <div id="box5" class="box5">
                    <div onClick="contenttxt(5,1)" id="content_title_51" class="content_title"></div>
                    <div id="content_title5_1" class="content_txt"></div>
                    <div onClick="contenttxt(5,2)" id="content_title_52" class="content_title"></div>
                    <div id="content_title5_2" class="content_txt">
                    </div>
                    <div onClick="contenttxt(5,3)" id="content_title_53" class="content_title"></div>
                    <div id="content_title5_3" class="content_txt">
                    </div>
                    <div onClick="contenttxt(5,4)" id="content_title_54" class="content_title"></div>
                    <div id="content_title5_4" class="content_txt">
                    </div>
                    <div onClick="contenttxt(5,5)" id="content_title_55" class="content_title"></div>
                    <div id="content_title5_5" class="content_txt">
                    </div>
                    <div onClick="contenttxt(5,6)" id="content_title_56" class="content_title"></div>
                    <div id="content_title5_6" class="content_txt">
                    </div>
                </div>
                <div id="box6" class="box6">
                    <div onClick="contenttxt(6,1)" id="content_title_61" class="content_title"></div>
                    <div id="content_title6_1" class="content_txt"></div>
                    <div onClick="contenttxt(6,2)" id="content_title_62" class="content_title"></div>
                    <div id="content_title6_2" class="content_txt">
                    </div>
                    <div onClick="contenttxt(6,3)" id="content_title_63" class="content_title"></div>
                    <div id="content_title6_3" class="content_txt">
                    </div>
                    <div onClick="contenttxt(6,4)" id="content_title_64" class="content_title"></div>
                    <div id="content_title6_4" class="content_txt">
                    </div>
                    <div onClick="contenttxt(6,5)" id="content_title_65" class="content_title"></div>
                    <div id="content_title6_5" class="content_txt">
                    </div>
                    <div onClick="contenttxt(6,6)" id="content_title_66" class="content_title"></div>
                    <div id="content_title6_6" class="content_txt">
                    </div>
                </div>
                <div id="box7" class="box7">
                    <div onClick="contenttxt(7,1)" id="content_title_71" class="content_title"></div>
                    <div id="content_title7_1" class="content_txt">
                    </div>
                    <div onClick="contenttxt(7,2)" id="content_title_72" class="content_title"></div>
                    <div id="content_title7_2" class="content_txt">
                    </div>
                    <div onClick="contenttxt(7,3)" id="content_title_73" class="content_title"></div>
                    <div id="content_title7_3" class="content_txt">
                    </div>
                </div>
            </div>
            <div id="qqku" class="cs_bottom">
                没有您关注的问题？
                <span onClick="javascript:window.open('http://b.qq.com/webc.htm?new=0&amp;sid=4000113520&amp;eid=218808P8z8p8P808p8R8K&amp;o=13520.com.cn&amp;q=7&amp;ref='+document.location, '_blank', 'height=10, width=10,toolbar=no,scrollbars=no,menubar=no,status=no');" style="cursor: pointer; color:#c2967e; font-size:16px; font-weight:bold;">立即联系在线客服</span>
            </div>
        </div>
        <script type="text/javascript">
            function showbox(id) {
                getQeestion(id);
                for (var i = 1; i <= 8; i++) {
                    if (i == id) {
                        showdiv(id);
                    }
                    else {
                        hidediv(i);
                    }
                }
            }
            function contenttxt(id, sid) {
                for (var i = 1; i <= 7; i++) {
                    if (i == id) {
                        showtxt(id, sid);
                    }
                    else {
                        hidetxt(i, sid);
                    }
                }


            }
            function showtxt(id, sid) {
                var objtitle = $("#content_title" + id + "_" + sid);

                if (objtitle.css("display") == "none") {
                    objtitle.show("fast");
                }
                else {

                    hidetxt(id, sid);
                }
                //$("#"+id).show("fast");
            }
            function hidetxt(id, sid) {
                var objtitle = $("#content_title" + id + "_" + sid);
                objtitle.hide("fast");
            }
            function hidediv(id) {
                $("#box" + id).hide("fast");

                $("#li" + id).css({ "font-size": "14px", "color": "#7d7d7d" });
            }

            function showdiv(id) {
                if ($("#box" + id).css("display") == "none") {
                    $("#box" + id).show("fast");
                    $("#li" + id).css({ "font-size": "18px", "color": "#000000" });
                }

            }

        </script>
        <script type="text/javascript">
            function showMask() {
                $("#masks").css("height", $(document).height());
                $("#masks").css("width", $(document).width());
                $("#masks").fadeIn();
            }
            function showModel(divName) {
                showMask();
                /* var top = ($(window).height() - $(divName).height()) / 5;
                 var left = ($(window).width() - $(divName).width()) / 2;
                 var scrollTop = $(document).scrollTop();
                 var scrollLeft = $(document).scrollLeft();*/
                $(divName).fadeIn();
            }
            function CloseMaskser() {

                $("#modelsever").fadeOut("slow");
                $("#masks").fadeOut("slow");
                $("#mask").fadeOut("slow");
            }

        </script>

</body>
</html>
