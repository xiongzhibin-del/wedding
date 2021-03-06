<%@ page import="com.we.pojo.User" %>
<%@ page import="com.we.pojo.Cart" %>
<%@ page import="java.util.List" %>
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
<title>购物车 - 提交订单</title>
<iframe src="javascript:false;" style="display: none;"></iframe>
<form id="aspnetForm" method="post" name="aspnetForm">
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
            <div class="shop_nav shop_nav-dd" id="ctl00_showNav"></div>
            <!--导航条end-->

            <script type="text/javascript">
                function addressItemSelected(control) {
                    $(control).addClass("check_bk").siblings().removeClass("check_bk");
                    $(control).find("input:radio").attr("checked", true);
                }
                //市数据加载事件

                var CityDataLoadEvent = function () { };
                var DistrictDataLoadEvent = function () { };

                $(function () {
                    //绑定地址点击事件
                    $(".shop_adress-top:not(:last)").each(function () {
                        $(this).click(function () {
                            hideNewAddress();
                            addressItemSelected(this);
                        });
                    });
                    //绑定新增地址事件
                    $(".shop_adress-top:last").click(function () {
                        //地址标题，新增还是修改
                        $(".shop_adress-add h4").text("新增新地址");
                        addressItemSelected(this);
                        showNewAddress();
                    });
                        //省下拉框ID
                    var province = "#province";
                    var city = "#city";
                    var district = "#district";
                    //加载省信息
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

                    //保存地址按钮事件
                    $(".save").click(function () {
                        var data = getData();
                        if (data.name == "") {
                            alert("收货人不能为空。");
                            return;
                        }
                        if (data.province == "请选择省份") {
                            alert("省份不能为空。");
                            return;
                        }
                        if (data.city == "请选择城市") {
                            alert("城市不能为空。");
                            return;
                        }
                        if (data.district == "请选择区县") {
                            alert("区县不能为空。");
                            return;
                        }
                        if (data.street == "") {
                            alert("详细地址不能为空。");
                            return;
                        }
                        if (data.postcode == "") {
                            alert("邮编不能为空。");
                            return;
                        }
                        if (data.mobile == "" && data.telephone == "") {
                            alert("手机号/固定电话必填一个。");
                            return;
                        }
                        var name = $("#addressName").val();
                        var pro = $("#province option:selected").text();
                        var city = $("#city option:selected").text();
                        var dis = $("#district option:selected").text();
                        var street = $("#street").val();
                        var post = $("#postcode").val();
                        var mobile = $("#mobile").val();
                        var tel = $("#telephone").val();

                        var getdata = getData();
                        var action = "save";
                        if (isNaN(getdata.sid)) {
                            //如果有id就是修改，没有就是增加
                            action = "add";
                        }
                        $.get(
                            "ship/"+action,
                            getdata,
                            function (data) {
                                alert(data);
                                location.href = "order/selectByUid";
                            }
                        )
                    });
                });

                function bindDdlData(cid,data) {
                    $(cid).append($("<option value=\"" + data.code + "\">" + data.name + "</option>"));
                }

                function showAddress(id) {
                    //地址标题，新增还是修改
                    $(".shop_adress-add h4").text("修改地址");
                    $("#cbDefaultAddress").hide();
                    $("#moren").hide();
                    $(".shop_adress-add").show();
                    $(".shop_adress-add").attr("id","address_"+id);
                }

                function showNewAddress() {
                    resetNewAddress();
                    $("#cbDefaultAddress").show();
                    $("#moren").show();
                    $(".shop_adress-add").show();
                }
                function hideNewAddress() {
                    $(".shop_adress-add").hide();
                }
                function resetNewAddress() {
                    $(".shop_adress-add").removeAttr("id");
                    $("#addressName").val("");
                    $("#province").val("-1");
                    $("#city").val("-1");
                    $("#space").val("-1");

                    $("#street").val("");
                    $("#postcode").val("");
                    $("#mobile").val("");
                    $("#telephone").val("");
                    $("#cbDefaultAddress").attr("checked", false);

                    $("#city option:not(:first)").remove();
                    $("#district option:not(:first)").remove();
                }

                function getData() {
                    var id = $(".shop_adress-add").attr("id");
                    //存在id的话就是修改，存在的话把id的前缀清空
                    id = id ? id.replace("address_", "") : undefined;
                    target = $("#cbDefaultAddress").attr("checked")==="checked" ? 1 :0;
                    return {
                        "sid": id,//订单id，如果没有就是新增，有就是修改
                        "sname": $("#addressName").val(),
                        "province": $("#province option:selected").text(),
                        "city": $("#city option:selected").text(),
                        "district": $("#district option:selected").text(),
                        "street": $("#street").val(),
                        "scoding": $("#postcode").val(),
                        "sphone": $("#mobile").val(),
                        "telephone": $("#telephone").val(),
                        "target": target
                    };
                }

                function setAddress(data) {
                    $("#addressName").val(data.name);
                    $("#province option").each(function () {
                        if (data.city.indexOf($(this).text()) != -1) {
                            $("#province").val($(this).val());
                            $("#province").change();
                        }
                    });
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

                    $("#street").val(data.street);
                    $("#postcode").val(data.code);
                    $("#mobile").val(data.mobile);
                    $("#telephone").val(data.phone);
                    $("#cbDefaultAddress").attr("checked", data.IsDefault);
                }
                // function deleteAddress(id) {
                //     if (confirm("确认是否删除？")) {
                //     }
                // }

                function submitOrder() {
                    //check
                    if ($(".shop_adress-top:not(:last) :radio:checked").length == 0) {
                        alert("请先选择一个地址。");
                        return;
                    }
                    $("#aspnetForm").submit();
                }
                $(function () {
                    $("#aspnetForm").attr("action", "order/addOrder");
                });


            </script>
            <!--内容-->
            <div class="shop_cort">
                <!--左边-->
                <div class="shop_cort-left fl">
                    <h3>收货人信息</h3>
                    <!--填写地址信息-->
                    <div class="shop_cort-adress">
<%--                        --%>
                        <!--地址-->
                        <div class="shop_adress-top">
                            <input type="radio" checked="checked" name="sid" value="${ship.sid}" />
                            <label>${ship.province}${ship.city}${ship.district}${ship.street}</label>
                            <label> &nbsp;${ship.sname}(收) ${ship.sphone}</label>
                            <span>默认地址</span>
                            <a href="javascript:showAddress(${ship.sid});">修改</a>
<%--                            <i>|</i>--%>
<%--                            <a href="javascript:deleteAddress(${ship.sid});">删除</a>--%>
                        </div>
                        <div class="shop_adress-top">
                            <input type="radio" id="addressNew" name="adress" />
                            <label class="adress_color" for="addressNew">添加新地址</label>
                        </div>
                        <!--地址end-->
                        <!--新加地址-->
                        <div style="display:none;" class="shop_adress-add">
                            <h4>添加新地址:</h4>
                            <div class="shop_adress-Toadd">
                                <label><i>*</i>收 货 人：</label>
                                <input type="text" class="true_name" placeholder="请准确填写真实姓名" id="addressName" />
                            </div>
                            <div class="shop_adress-Toadd">
                                <label><i>*</i>所在地区：</label>
                                <select id="province">
                                    <option value="-1">请选择省份</option>
                                    <c:forEach items="${pros}" var="pro">
                                        <option value="${pro.id}">${pro.cityname}</option>
                                    </c:forEach>
                                </select>
                                <span>市：</span>
                                <select id="city"> <option value="-1">请选择城市</option> </select>
                                <span>县：</span>
                                <select id="district"> <option value="-1">请选择区县</option> </select>
                            </div>
                            <div class="shop_adress-Toadd">
                                <label><i>*</i>详细地址：</label>
                                <input type="text" placeholder="请填写详细路名及门牌号" class="adt_1" id="street" />
                            </div>
                            <div class="shop_adress-Toadd">
                                <label><i>*</i>邮政编码：</label>
                                <input type="text" class="true_number" placeholder="请填写邮政编码" id="postcode" />
                            </div>
                            <div class="shop_adress-Toadd">
                                <label><i>*</i>手机号码：</label>
                                <input type="text" id="mobile" />
                                <span class="oth_color">或</span>
                                <span>固定电话：</span>
                                <input type="text" id="telephone" />
                            </div>
                            <div class="shop_adress-sp">
                                <input type="checkbox" id="cbDefaultAddress"/>
                                <label for="cbDefaultAddress" id="moren">设为默认地址</label>
                            </div>
                            <div class="shop_adress-save">
                                <div class="bt1">
                                    <span class="save">保存收货人信息</span>
                                </div>
                            </div>
                        </div>
                        <!--新加地址end-->
                        <div class="shop_adress-qr">
                            <div class="shop_adressqr-top">
                                <a class="fr" href="cart">返回修改购物车&gt;&gt;</a>
                                <span>确认订单信息</span>
                                <i>提示：专属订制产品，需要相关证书认证时间。建议尽快提交。</i>
                            </div>
                            <!--订单-->
                            <table cellspacing="0" cellpadding="0" border="0" class="shop_adressqr-of">
                                <tbody>
                                <tr class="shop_adressqr-first">
                                    <td class="shop_adress-shoop">商 品</td>
                                    <td class="shop_adress-cz">材 质</td>
                                    <td class="shop_adress-sc">手寸/尺寸</td>
                                    <td class="shop_adress-kz">刻 字</td>
                                    <td class="shop_adress-pirce">价 格</td>
                                </tr>
                                <c:forEach items="${login.cart}" var="carts">
                                <tr class="shop_adressqr-sec">
                                    <td class="shop_adress-shoop">${carts.commdity.seres}系列 ${carts.commdity.style}</td>
                                    <td class="shop_adress-cz">${carts.commdity.texture}</td>
                                    <td class="shop_adress-sc">${carts.chicun}</td>
                                    <td class="shop_adress-kz">${carts.kezi}</td>
                                    <td class="shop_adress-pirce"><span style="font-family:微软雅黑">￥${carts.commdity.price}</span></td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <!--订单end-->
                            <!--总计-->
                            <%
                                User login =(User) session.getAttribute("login");
                                List<Cart> list = login.getCart();
                                long total = 0;
                                for(Cart c:list){
                                    total += c.getCommdity().getPrice();
                                }
                                request.setAttribute("total",total);
                            %>
                            <div class="shop_adress-zj">
                                <div class="fl">
                                    <span>总计</span>
                                </div>
                                <div class="fr">
                                    <i>${login.cart.size()}</i>
                                    <span>件商品</span>
                                    <span>应付金额：</span>
                                    <i style="font-family:微软雅黑" class="fw_bold">￥${total}</i>
                                    <input name="total" type="text" value="${total}" style="display: none">
                                </div>
                            </div>
                            <!--总计-->
                            <!--最后一块-->
                            <div class="shop_adress-last">
                                <div class="shop_adress-ddbz fl">
                                    <p>订单备注</p>
                                    <textarea placeholder="此处请勿填写有关支付方面的信息,留言请在50字以内。" class="shop_adress-text" name="remark"></textarea>
                                </div>
                                <div onClick="submitOrder();" class="shop_adress-tjdd fr">
                                    <div class="bt1 fr">
                                        <span>立即提交订单</span>
                                    </div>
                                </div>
                            </div>
                            <!--最后一块end-->
                        </div>
                    </div>
                    <!--填写地址信息end-->
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
            <!--内容end-->
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