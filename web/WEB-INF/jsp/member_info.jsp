<%@ page import="com.we.pojo.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8"/>
    <link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
    <title>个人中心 - 修改资料</title>
    <link href="css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
    <link href="css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" />
    <script src="js/year_month_day.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        //市数据加载事件
        var CityDataLoadEvent = function () { };
        var DistrictDataLoadEvent = function () { };
        $(function () {
            //省下拉框ID
            var province = "#province";
            var city = "#city";
            var district = "#district";
            //加载省信息
//            $.get("/nAPI/AddressInfo.ashx?action=province", function (data) {
//                $(data).each(function () {
//                    bindDdlData(province, this);
//                });
//                var str = "";
//                setAddress(str);
//            });
            //省下拉框onchange事件
            $(province).change(function () {
                var val = this.value;
                $(city).empty();
                $(city).append("<option value='-1'>请选择城市</option>");
                $.get(
                    "pro/proChange",
                    {id:val},
                    function (data) {
                        eval("var cities = "+data);
                        for(i in cities){
                            $("<option></option>")
                                .val(cities[i].id)
                                .text(cities[i].cityname)
                                .appendTo($(city));
                        }
                    }
                )
            });
            //市下拉框onchange事件
            $(city).change(function () {
                var val = this.value;
                $(district).empty();
                $(district).append("<option value='-1'>请选择区县</option>");
                $.get(
                    "pro/cityChange",
                    {id:val},
                    function (data) {
                        eval("var districts = "+data);
                        for(i in districts){
                            $("<option></option>")
                                .val(districts[i].id)
                                .text(districts[i].cityname)
                                .appendTo($(district));
                        }
                    }
                )
            });

            $("#nicname").focus(function () {
                $("#shrid").hide();
                $("#shry").hide();
            });
            $("#telephone").focus(function () {
                $("#zjid").hide();
                $("#zjy").hide();
            });
            $("#mobile").focus(function () {
                $("#sjid").hide();
                $("#sjy").hide();
            });
            $("#postcode").focus(function () {
                $("#postid").hide();
                $("#posty").hide();
            });
            $("#realName").focus(function () {
                $("#realId").hide();
                $("#realy").hide();
            });
            $("#street").focus(function () {
                $("#streid").hide();
                $("#strey").hide();
            });

            var temail = $("#sp_email").html();
            if (temail == "") {
                $("#div_email").show();
            }
            else {
                $("#div_email").hide();
            }

            $("#txtEmail").blur(function () {
                var nickname = $("#txtEmail").val();
                if (nickname == "") {
                    $("#shrwrong1").show();
                    $("#shrwrong1").text("请输入邮箱！");
                    $("#shrid1").show();
                    $("#shry1").hide();
                    return false;
                } else {
                    if (!isEmail(nickname)){
                        $("#shrwrong1").show();
                        $("#shrwrong1").text("邮箱格式错误！");
                        $("#shrid1").show();
                        $("#shry1").hide();
                        return false;
                    }else {
                        $("#shrwrong1").hide();
                        $("#shrid1").hide();
                        $("#shry1").show();
                    }
                }
            });

            $("#nicname").blur(function () {
                var nickname = $("#nicname").val();
                if (nickname == "") {
                    $("#shrwrong").text("请输入昵称！");
                    $("#shrid").show();
                    return false;
                } else {
                    $("#shry").show();

                }
            });

            function isEmail(strEmail) {
                if (strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
                    return true;
                else {
                    return false;
                }
            }

            $("#mobile").blur(function () {
                var tel = $("#mobile").val();
                if (tel == "") {
                    $("#sjwrong").text("请输入手机号！");
                    $("#sjid").show();
                    return false;
                } else {
                    if (!checkTel(tel)) {
                        $("#sjwrong").text("手机号格式不正确！");
                        $("#sjid").show();
                    } else {
                        $("#sjy").show();
                    }


                }
            });
            $("#postcode").blur(function () {
                var post = $("#postcode").val();
                if (!checkcode(post)) {
                    $("#postwrong").text("请输入正确的邮编！");
                    $("#postid").show();
                    return false;
                } else {
                    $("#posty").show();

                }
            });
            $("#street").blur(function () {
                var stree = $("#street").val();
                if (stree == "") {
                    $("#strewrong").text("请输入内容！");
                    $("#streid").show();
                    $("#strey").hide();
                    return false;
                }
                if (stree.length > 250) {
                    $("#strewrong").text("输入内容过长！");
                    $("#streid").show();
                    $("#strey").hide();
                } else {
                    $("#strey").show();
                }
            });
            $("#realName").blur(function () {
                var realName = $("#realName").val();
                if (realName == "") {
                    $("#realwrong").text("请输入姓名！");
                    $("#realId").show();
                    return false;
                } else {
                    $("#realy").show();

                }
            });
            $("#btnsave").click(function () {
                var email = $("#sp_email").html();
                if (email == "") {
                    email = $("#txtEmail").val();
                    if (!isEmail($("#txtEmail").val())) {
                        // alert("邮箱不正确!");
                        return false;
                    }
                }
                var realName = $("#realName").val();
                var gender = $("input:checked").val();
                var year = $("#selYear option:selected").val();
                var month = $("#selMonth option:selected").val();
                var day = $("#selDay option:selected").val();
                var pro = $("#province option:selected").text();
                var city = $("#city option:selected").text();
                var district = $("#district option:selected").text();
                var address = $("#street").val();
                var post = $("#postcode").val();
                var tel = $("#mobile").val();
                var photo = $("#telephone").val();
                var nickname = $("#nicname").val();

                if (email == "") {
                    $("#shrwrong1").text("请输入邮箱！");
                    $("#shrid1").show();
                    return false;
                }
                else {
                    $("#shry1").show();
                }

                if (nickname == "") {
                    $("#shrwrong").text("请输入昵称！");
                    $("#shrid").show();
                    return false;
                } else {
                    $("#shry").show();

                }
                if (realName == "") {
                    $("#realwrong").text("请输入姓名！");
                    $("#realId").show();
                    return false;
                } else {
                    $("#realy").show();

                }
                if (!checkcode(post)) {
                    $("#postwrong").text("请输入正确的邮编！");
                    $("#postid").show();
                    return false;
                } else {
                    $("#postid").hide();
                    $("#posty").show();

                }
                if (address == "") {
                    $("#strewrong").text("请输入内容！");
                    $("#streid").show();
                    return false;
                }
                if (district == "请选择区县") {
                    $("#strewrong").text("请选择区县！");
                    $("#strey").hide();
                    $("#streid").show();
                    return false;
                }
                if (address.length > 250) {
                    $("#strewrong").text("输入内容过长！");
                    $("#streid").show();
                    return false;
                } else {
                    $("#strey").show();
                }
                if (tel == "") {
                    $("#sjwrong").text("请输入手机号！");
                    $("#sjid").show();
                    return false;
                } else {
                    if (!checkTel(tel)) {
                        $("#sjwrong").text("手机号格式不正确！");
                        $("#sjid").show();
                    } else {
                        $("#sjy").show();
                    }
                }

                $.post(
                    "user/updateUser",
                    {
                    u_id:${login.u_id},
                    e_mail: email,
                    petname: nickname,
                    realname: realName,
                    sex: gender,
                    year: year,
                    month: month,
                    day: day,
                    pro: pro,
                    city: city,
                    dis: district,
                    usite: address,
                    ucoding: post,
                    mobile: tel,
                    landine: photo
                }, function (data) {
                    if (data == "success") {
                        alert("保存成功！");
                        window.location.href= "pro/selectPro";
                        return false;
                    }
                    if (data == "false") {
                        alert("保存失败！");
                        return false;
                    }
                    if (data == "repeat") {
                        alert("手机号已注册过!");
                        return false;
                    }
                    if (data == "erepeat") {
                        alert("邮箱已注册过!");
                        return false;
                    }
                });
            });


        });

        function bindDdlData(cid, data) {
            $(cid).append($("<option value=\"" + data.code + "\">" + data.name + "</option>"));
        }
        CityDataLoadEvent = function () {
            $("#city option").each(function () {
                if (data.city.indexOf($(this).text()) != -1) {
                    $("#city").val($(this).val());
                    $("#city").change();
                }
            });
        };
        DistrictDataLoadEvent = function () {
            $("#district option").each(function () {
                if (data.city.indexOf($(this).text()) != -1) {
                    $("#district").val($(this).val());
                }
            });
        };





        $(function () {
            var selYear = window.document.getElementById("selYear");
            var selMonth = window.document.getElementById("selMonth");
            var selDay = window.document.getElementById("selDay");
            // 新建一个DateSelector类的实例，将三个select对象传进去
            var date = '';
            var year = '';
            var mon = '';
            var day = '';
            if (date != '') {
                var d = date.split("-");
                year = d[0];
                mon = d[1];
                day = d[2];
            } else {
                year = 2014;
                mon = 12;
                day = 12;
            }

            new DateSelector(selYear, selMonth, selDay, year, mon, day);
        });
        function setAddress(data) {

            $("#province option").each(function () {
                if (data.indexOf($(this).text()) != -1) {
                    $("#province").val($(this).val());
                    $("#province").change();
                }
            });
            CityDataLoadEvent = function () {
                $("#city option").each(function () {
                    if (data.indexOf($(this).text()) != -1) {
                        $("#city").val($(this).val());
                        $("#city").change();
                    }
                });
            };
            DistrictDataLoadEvent = function () {
                $("#district option").each(function () {
                    if (data.indexOf($(this).text()) != -1) {
                        $("#district").val($(this).val());
                        var address = "";
                        $("#street").val(address.substr(address.lastIndexOf($(this).text())).replace($(this).text(),""));
                    }
                });
            };
        }
        //
        function checkTel(tel) {
            var mobile = /^1[3-8]+\d{9}$/;
            return mobile.test(tel);
        }
        //
        function checkcode(zipcode) {
            var MyNumber = /^[0-9]{1}[0-9]{5}$/;
            return MyNumber.test(zipcode);

        }
        function checkphone(tel) {
            var mobile = /^(\d{3,4}-?)?\d{7,9}$/;
            return mobile.test(tel);
        }
    </script>
</head>
<body>
<form id="aspnetForm" action="member_info.html" method="post" name="aspnetForm">

    <div>

        <!--头部-->
        <div class="cmain">
            <div class="headtop">
                <!--头部左边-->
                <div class="top-left fl">
                    <a title="Darry Ring" href="index.html"> <img width="187" height="42" alt="Darry Ring官网" src="images/logo.png" /> </a>
                    <span style="font-weight: normal;">求婚钻戒领导品牌</span>
                </div>
                <!--头部左边end-->
                <!--头部右边-->
                <div class="top-right fr">
                    <!--登录注册-->
                    <ul class="tright-ul fl">
                        <div id="ctl00_ucheader_pllogin2">
                            <c:choose>
                                <c:when test="${login.petname eq null}">
                                    <li><a><span id="ctl00_ucheader_lit">${login.uname}</span></a></li>
                                </c:when>
                                <c:otherwise>
                                    <li><a><span id="ctl00_ucheader_lit">${login.petname}</span></a></li>
                                </c:otherwise>
                            </c:choose>
                            <li> <a href="javascript:logout()" rel="nofollow">退出</a><em>|</em> </li>
                            <li><a target="black" rel="nofollow" href="commdity/detail1">我的DR</a><em>|</em></li>
                            <li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="cart.html">购物车</a><i>(${login.cart.size()})</i></li>
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
                        <div class="theright_div">
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
            <!--中间-->
            <div class="cort">
                <!--内容-->
                <div class="cmain mb_back">
                    <div class="zbk_top spalid">
                        <span>您当前的位置：</span>
                        <span id="ctl00_content_website_SiteMapPath1"><a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a><span> <a target="_blank" href="index.html">Darry Ring</a> </span><span> <em>&gt;</em> </span><span> <a target="_blank" href="member_index.html">我的DR</a> </span><span> <em>&gt;</em> </span><span> <span>个人信息</span> </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
                    </div>
                    <!--中间内容-->
                    <div class="member_cort">
                        <!--左边树-->
                        <div class="member_cort-left fl">
                            <!--我的DR-->
                            <div class="member_cortleft-tittle">
                                <i class="mb_home"></i>
                                <a rel="nofollow" href="member_index.html">我的DR</a>
                            </div>
                            <!--我的DR end-->
                            <ul class="member_cort-ul">
                                <li> <h3> -订单中心-</h3>
                                    <ul class="member_ul-dr">
                                        <li id="ctl00_content_treeId_order"><a rel="nofollow" href="member_order.html">我的订单</a></li>
                                        <li id="ctl00_content_treeId_ask"><a rel="nofollow" href="/member/myevaluate.html">我要评价</a></li>
                                        <li id="ctl00_content_treeId_cart"><a rel="nofollow" href="cart.html" target="_blank">我的购物车</a></li>
                                        <li id="ctl00_content_treeId_collect"><a rel="nofollow" href="commdity/detail2">我的收藏</a></li>
                                        <li class="no_border" id="ctl00_content_treeId_yuyue"><a rel="nofollow" href="/member/myappointment.html">我的预约</a></li>
                                    </ul> </li>
                                <li> <h3> -售后服务-</h3>
                                    <ul class="member_ul-dr">
                                        <li id="ctl00_content_treeId_salAfter"><a rel="nofollow" href="/member/aftersale.html">售后办理</a></li>
                                    </ul> </li>
                                <li> <h3> -帐户管理-</h3>
                                    <ul class="member_ul-dr">
                                        <li class="speacil_color" id="ctl00_content_ucmemberleft_myinfo"><a rel="nofollow" href="pro/selectPro">个人信息</a></li>
                                        <li id="ctl00_content_ucmemberleft_password"><a rel="nofollow" href="member_pwd">修改密码</a></li>
                                        <li id="ctl00_content_ucmemberleft_address"><a rel="nofollow" href="ship/selectByUid">收货地址</a></li>
<%--                                        <li id="ctl00_content_ucmemberleft_li_jnr"><a href="/member/mydr_jnr.html">纪念日维护</a></li>--%>
<%--                                        <li id="ctl00_content_ucmemberleft_zhuanshu"> <a href="/member/DarryHome.aspx"> 专属空间</a></li>--%>
<%--                                        <li class="no_border" id="ctl00_content_ucmemberleft_news"><a rel="nofollow" href="/member/mynews.html">系统消息</a></li>--%>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!--左边树end-->
                        <!--右边的主要内容-->
                        <div class="member_cort-right fr">
                            <!--我的个人信息-->
                            <div class="member_person">
                                <div class="member_ask-tittle">
                                    <h4> 我的个人信息</h4>
                                    <p> 为了能给您提供个性化服务，请完善您的基本资料。</p>
                                </div>
                                <!--个人信息填写-->
                                <div class="member_person-cort">
                                    <!--左边-->
                                    <div class="member_person-cort_left">
                                        <div class="person-cort_left-word">
                                            <span>用户名：${login.uname}</span>
                                            <span id="sp_email"></span>
                                        </div>
                                        <div class="person-cort_left-word person-cort_left-spword">
                                            <span>可享受更多DarryRing为您提供的贴心服务与提醒通知。</span>
                                        </div>
<%--                                        <c:forEach items="${login}" var="login">--%>
                                        <div class="person-cort_left-write" id="div_email">
                                            <span>邮&nbsp;&nbsp;箱：</span>
                                            <input type="text" value="${login.e_mail}" class="write_text" id="txtEmail" />
                                            <span style="display: none" id="shrid1"><i class="writer_wrong"></i><em id="shrwrong1" class="writer_word"></em></span>
                                            <span id="shry1" style="display: none"><i class="writer_right"> </i></span>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span>昵&nbsp;&nbsp;称：</span>
                                            <input type="text" value="${login.petname}" class="write_text" id="nicname" />
                                            <span style="display: none" id="shrid"><i class="writer_wrong"></i><em id="shrwrong" class="writer_word"></em></span>
                                            <span id="shry" style="display: none"><i class="writer_right"> </i></span>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span>真实姓名：</span>
                                            <input type="text" value="${login.realname}" class="write_text" id="realName" />
                                            <span style="display: none" id="realId"><i class="writer_wrong"></i><em id="realwrong" class="writer_word"></em></span>
                                            <span id="realy" style="display: none"><i class="writer_right"> </i></span>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span>性&nbsp;&nbsp;别：</span>
                                            <c:choose>
                                                <c:when test="${login.sex eq '女'}">
                                                    <input type="radio"  id="ctl00_content_nan" name="ctl00$content$sex" value="男" />
                                                    <label for="nan"> 男</label>
                                                    <input type="radio" checked="checked" id="ctl00_content_nv" name="ctl00$content$sex" value="女" />
                                                    <label for="nv"> 女</label>
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="radio"  checked="checked" id="ctl00_content_nan" name="ctl00$content$sex" value="男" />
                                                    <label for="nan"> 男</label>
                                                    <input type="radio"  id="ctl00_content_nv" name="ctl00$content$sex" value="女" />
                                                    <label for="nv"> 女</label>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span>出生日期：</span>
                                            <select id="selYear"> <option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option></select>
                                            <select id="selMonth"> <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
                                            <select id="selDay"> <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span>地&nbsp;&nbsp;区：</span>
                                            <select id="province">
                                                <option value="-1">请选择省份</option>
                                                <c:forEach items="${pros}" var="pro">
                                                     <option value="${pro.id}">${pro.cityname}</option>
                                                </c:forEach>
                                            </select>
                                            <label> 市：</label>
                                            <select id="city"> <option value="-1">请选择城市</option> </select>
                                            <label> 县：</label>
                                            <select id="district"> <option value="-1">请选择区县</option> </select>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span class="write_vtop">详细地址：</span>
                                            <textarea id="street" cols="20" rows="2" name="ctl00$content$street">${login.usite}</textarea>
                                            <span id="streid" style="display: none"><i class="writer_wrong"></i><em id="strewrong" class="writer_word"></em></span>
                                            <span id="strey" style="display: none"><i class="writer_right"> </i></span>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span>邮政编码：</span>
                                            <input type="text" value="${login.ucoding}" class="write_text" id="postcode"/>
                                            <span id="postid" style="display: none"><i class="writer_wrong"></i><em id="postwrong" class="writer_word"></em></span>
                                            <span id="posty" style="display: none"><i class="writer_right"> </i></span>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span class="fl">手&nbsp;&nbsp;机：</span>
                                            <input type="text" value="${login.mobile}" class="write_text fl" id="mobile" />
                                            <span id="sjid" style="display: none"><i class="writer_wrong"></i><em id="sjwrong" class="writer_word"></em></span>
                                            <span id="sjy" style="display: none"><i class="writer_right"> </i></span>
                                        </div>
                                        <div class="person-cort_left-write">
                                            <span>座&nbsp;&nbsp;机：</span>
                                            <input type="text" value="${login.landine}" class="write_text" id="telephone" />
                                            <span id="zjid" style="display: none"><i class="writer_wrong"></i><em id="zjwrong" class="writer_word"></em></span>
                                            <span id="zjy" style="display: none"><i class="writer_right"> </i></span>
                                        </div>
<%--                                        </c:forEach>--%>
                                        <div id="btnsave" class="bt1 person-cort_left-button">
                                            &gt; 保存
                                        </div>
                                    </div>
                                    <!--左边end-->
                                    <!--右边-->
                                    <div class="member_person-cort_right">
                                        <a href="#"> <img width="90" height="90" src="upload/${photo1.filename}" /> </a>
                                        <p> <a href="member_avatar">更换头像</a> </p>
                                    </div>
                                    <!--右边end-->
                                </div>
                                <!--个人信息填写end-->
                            </div>
                            <!--我的个人信息end-->
                        </div>
                        <!--右边的主要内容end-->
                    </div>
                    <!--中间内容end-->
                </div>
                <!--内容end-->
            </div>
            <!--中间end-->
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
