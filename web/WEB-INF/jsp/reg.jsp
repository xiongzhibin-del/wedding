<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";//basePath是当前项目的根目录
%>

<html class="hb-loaded"><head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>会员注册</title>
    <meta name="Keywords" content="Darry Ring钻戒价格,Darry Ring钻戒图片">
    <meta name="Description" content="Darry Ring官网会员注册登录唯一入口，Darry Ring是求婚钻戒第一品牌，想了解Darry Ring实体店、Darry Ring哪里有卖等相关Darry Ring资讯就先进入戴瑞珠宝官网注册吧！">

    <link href="css/style.css" type="text/css" rel="stylesheet"/>
</head>

<body>
<div class="wrap">
    <!-- start of 头部导航-->
    <div class="head_top">
        <div class="head clearfix">
            <!--头部左边-->
            <div class="topLeft left">
                <a href="index.html" title="Darry Ring">
                    <img width="186" height="42" src="images/logo_01.png ">
                </a>
                <span>求婚钻戒领导品牌</span>
            </div>
            <!--头部左边end-->
            <!--头部右边-->
            <ul class="topRight right">
                <li>国际权威认证</li>
                <li class="tr_2">15天无理由退换</li>
                <li class="tr_3">终身保养</li>
            </ul>
            <!--头部左边end-->
        </div>
    </div>
    <!--end of 头部导航-->
    <!-- starto of container -->
    <div class="container">
        <!--中间内容-->
        <div class="cmain ddd">
            <!--内容右边-->
            <div class="cort-right right">
                <div class="r_bg"></div>
                <!--登陆框内-->
                <div class="cr_border">
                    <div class="tits">
                        <span class="focus ph"><em></em>手机注册</span>
                        <span class=" em"><em></em>邮箱注册</span>
                    </div>
                    <!--手机注册-->

                    <form method="post" action="register/mobile" class="form_first">
                        <input type="hidden" value="1" name="type">
                        <input type="hidden" value="login.html" name="forward">
                        <input type="hidden" value="H6mY5VyS" name="skey">
                        <div style="" class="photo_show">
                            <!--邮箱-->
                            <div class="the_input">
                                <span class="member"></span>
                                <input type="text" placeholder="请输入手机号码" class="al_Input dr_photo" value="" name="mobile">
                            </div>
                            <!--邮箱end-->
                            <!--密码-->
                            <div style="border:none" class="the_input">
                                <span class="password"></span>
                                <input type="text" style="width:133px;" placeholder="请输入验证码" class="al_Input ls" value="" name="mobile_code">
                                <input type="button" value="获取验证码" class="action mobile_action">
                            </div>

                            <!--验证码end-->
                            <!--密码-->
                            <div class="the_input ">
                                <span class="pw"></span>
                                <input type="password" placeholder="请输入密码" maxlength="21" class="al_Input dr_photo" value="" name="mobile_pwd">
                            </div>
                            <!--密码end-->
                            <!--密码-->
                            <div class="the_input ">
                                <span class="pw"></span>
                                <input type="password" placeholder="确认密码" maxlength="21" class="al_Input dr_photo" value="" name="mobile_pwd_confirm">
                            </div>
                            <!--密码end-->

                            <div class="other_input">
                                <div class="left">
                                    <input type="checkbox" name="mobile_check" id="check">
                                    <label for="check">已经仔细阅读并同意<a target="_blank" href="index.html/help_se/49.html">《Darry Ring用户注册协议》</a></label>
                                </div>
                            </div>

                            <!--其他合作-->
                            <div class="other_hz">
                                <input type="button" value="立即注册" id="mobile_reg" class="up">
                            </div>
                            <!--其他合作end-->
                        </div>
                    </form>
                    <!--手机注册end-->

                    <!--邮箱注册-->
                    <form method="post" action="register/email" class="form_second">
                        <input type="hidden" value="2" name="type">
                        <input type="hidden" value="login.html" name="forward">
                        <div style="display:none" class="photo_show">
                            <!--邮箱-->
                            <div class="the_input ">
                                <span class="member"></span>
                                <input type="text" placeholder="请输入邮箱" class="al_Input dr_photo" value="" name="email">
                            </div>
                            <!--邮箱end-->

                            <!--密码-->
                            <div class="the_input ">
                                <span class="pw"></span>
                                <input type="password" placeholder="请输入密码" maxlength="21" class="al_Input dr_photo" value="" name="email_pwd">
                            </div>
                            <!--密码end-->
                            <!--密码-->
                            <div class="the_input ">
                                <span class="pw"></span>
                                <input type="password" placeholder="确认密码" maxlength="21" class="al_Input dr_photo" value="" name="email_pwd_confirm">
                            </div>
                            <!--密码end-->

                            <!--验证-->
<%--                            <div style="border:none" class="the_input">--%>
<%--                                <span class="password"></span>--%>
<%--                                <input type="text" style="width:93px;" placeholder="请输入验证码" class="al_Input ls" value="" name="email_code">--%>
<%--                                <div class="action_code"><a title="点击刷新验证码" href="javascript:void(0)"><img onClick="javascript:this.src = '/code?' + Math.random();" src="/code"></a></div>--%>
<%--                            </div>--%>
                            <!--验证码end-->

                            <div class="other_input">
                                <div class="left">
                                    <input type="checkbox" id="email_check" name="email_check">
                                    <label for="email_check">已经仔细阅读并同意<a target="_blank" href="index.html/help_se/49.html">《Darry Ring用户注册协议》</a></label>
                                </div>
                            </div>

                            <!--其他合作-->
                            <div class="other_hz">
                                <input type="button" value="立即注册" id="email_reg" class="up">
                            </div>
                            <!--其他合作end-->
                        </div>
                    </form>
                    <div><span style="font-size: 12px; display: inline-block;padding-top: 10px;float:left;margin-left: 176px; ">已经有账号，</span><span style="color: #8e4f1b; font-size: 12px; display: inline-block; float: right; margin-right: 42px; padding-top: 10px;"><a href="login.html">立即登录</a></span></div>
                    <!--邮箱注册end-->
                </div>
                <!--登陆框内end-->
            </div>
            <!--内容右边end-->
        </div>
        <!--中间内容end-->
    </div>
    <!-- end of container -->

    <!--底部end-->
    <div class="cmain bc_yz">
        <div class="db_cort">
            <p>Copyright &copy; 2006-2015 www.darryring.com 戴瑞珠宝 All Rights Reserved. 粤ICP备11012085号</p>
            <p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
        </div>
    </div>

    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function(){
            //切换tab
            $(".tits .ph").click(function(event) {
                $(this).addClass('focus').siblings().removeClass('focus')
                $(".photo_show").eq(0).show()
                $(".photo_show").eq(1).hide()
            });

            $(".tits .em").click(function(event) {
                $(this).addClass('focus').siblings().removeClass('focus')
                $(".photo_show").eq(1).show()
                $(".photo_show").eq(0).hide()
            });


            //验证参数
            $('.up').click(function(){
                $('.ts_wrong').remove();
                $('.al_Input').removeClass('error');
                //判断是邮箱还是手机
                if($('.em').hasClass('focus')){
                    //邮箱登录
                    var email = $('input[name="email"]').val();
                    if(isNull(email)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入邮箱！</span></div>';
                        $('input[name="email"]').parent().after(notice);
                        $('input[name="email"]').addClass('error');
                        return false;
                    }

                    if(!isEmail(email)){
                        var notice = '<div class="ts_wrong"><span id="wrong">邮箱格式错误 请重新输入！</span></div>';
                        $('input[name="email"]').parent().after(notice);
                        $('input[name="email"]').addClass('error');
                        return false;
                    }

                    var pwd = $('input[name="email_pwd"]').val();
                    if(isNull(pwd)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
                        $('input[name="email_pwd"]').parent().after(notice);
                        $('input[name="email_pwd"]').addClass('error');
                        return false;
                    }

                    if(pwd.length < 6){
                        var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
                        $('input[name="email_pwd"]').parent().after(notice);
                        $('input[name="email_pwd"]').addClass('error');
                        return false;
                    }

                    var pwd_confirm = $('input[name="email_pwd_confirm"]').val();
                    if(isNull(pwd_confirm)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入确认密码！</span></div>';
                        $('input[name="email_pwd_confirm"]').parent().after(notice);
                        $('input[name="email_pwd_confirm"]').addClass('error');
                        return false;
                    }

                    if(pwd != pwd_confirm){
                        var notice = '<div class="ts_wrong"><span id="wrong">密码与确认密码不一致 请重新输入！</span></div>';
                        $('input[name="email_pwd_confirm"]').parent().after(notice);
                        $('input[name="email_pwd_confirm"]').addClass('error');
                        return false;
                    }

                    // var code = $('input[name="email_code"]').val();
                    // if(isNull(code)){
                    //     var notice = '<div class="ts_wrong"><span id="wrong">请输入验证码！</span></div>';
                    //     $('input[name="email_code"]').parent().after(notice);
                    //     $('input[name="email_code"]').addClass('error');
                    //     return false;
                    // }


                    if(!$('input[name="email_check"]').is(':checked')){
                        var notice = '<div class="ts_wrong"><span id="wrong">请阅读并同意用户注册协议！</span></div>';
                        $('input[name="email_check"]').parent().parent().after(notice);
                        return false;
                    }

                    // $('#mobile_reg').click(ag_Reg_click_Mobile);
                    // 注册统计
                    // ag_Reg_click_Email();

                    //检测邮箱是否使用过
                    $.ajax({
                        type: "POST",
                        url: "sign/validEmail",
                        data: "email="+email,
                        success: function(msg){
                            if(msg == 1){
                                var notice = '<div class="ts_wrong"><span id="wrong">该邮箱已被注册！</span></div>';
                                $('input[name="email"]').parent().after(notice);
                                $('input[name="email"]').addClass('error');
                                return false;
                            }else{
                                $('.form_second').submit();
                            }
                        }
                    });




                }

                if($('.ph').hasClass('focus')){
                    //手机登录
                    var mobile = $('input[name="mobile"]').val();
                    if(isNull(mobile)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
                        $('input[name="mobile"]').parent().after(notice);
                        $('input[name="mobile"]').addClass('error');
                        return false;
                    }

                    if(!checkMobile(mobile)){
                        var notice = '<div class="ts_wrong"><span id="wrong">手机号码格式错误 请重新输入！</span></div>';
                        $('input[name="mobile"]').parent().after(notice);
                        $('input[name="mobile"]').addClass('error');
                        return false;
                    }

                    var code = $('input[name="mobile_code"]').val();
                    if(isNull(code)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入验证码！</span></div>';
                        $('input[name="mobile_code"]').parent().after(notice);
                        $('input[name="mobile_code"]').addClass('error');
                        return false;
                    }

                    var pwd = $('input[name="mobile_pwd"]').val();
                    if(isNull(pwd)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
                        $('input[name="mobile_pwd"]').parent().after(notice);
                        $('input[name="mobile_pwd"]').addClass('error');
                        return false;
                    }

                    if(pwd.length < 6){
                        var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
                        $('input[name="mobile_pwd"]').parent().after(notice);
                        $('input[name="mobile_pwd"]').addClass('error');
                        return false;
                    }

                    var pwd_confirm = $('input[name="mobile_pwd_confirm"]').val();
                    if(isNull(pwd_confirm)){
                        var notice = '<div class="ts_wrong"><span id="wrong">请输入确认密码！</span></div>';
                        $('input[name="mobile_pwd_confirm"]').parent().after(notice);
                        $('input[name="mobile_pwd_confirm"]').addClass('error');
                        return false;
                    }

                    if(pwd != pwd_confirm){
                        var notice = '<div class="ts_wrong"><span id="wrong">密码与确认密码不一致 请重新输入！</span></div>';
                        $('input[name="mobile_pwd_confirm"]').parent().after(notice);
                        $('input[name="mobile_pwd_confirm"]').addClass('error');
                        return false;
                    }

                    if(!$('input[name="mobile_check"]').is(':checked')){
                        var notice = '<div class="ts_wrong"><span id="wrong">请阅读并同意用户注册协议！</span></div>';
                        $('input[name="mobile_check"]').parent().parent().after(notice);
                        return false;
                    }

                    //检测手机号码是否使用过
                    $.ajax({
                        type: "POST",
                        url: "sign/validMobile",
                        data: "mobile="+mobile,
                        success: function(msg){
                            if(msg == 1){
                                var notice = '<div class="ts_wrong"><span id="wrong">该手机号码已被注册！</span></div>';
                                $('input[name="mobile"]').parent().after(notice);
                                $('input[name="mobile"]').addClass('error');
                                return false;
                            }else{
                                $.ajax({
                                    type: "POST",
                                    url: "sign/validMobileCode",
                                    data: "code="+code,
                                    success: function(msg){
                                        if(msg == 0){
                                            var notice = '<div class="ts_wrong"><span id="wrong">验证码错误！</span></div>';
                                            $('input[name="mobile_code"]').parent().after(notice);
                                            $('input[name="mobile_code"]').addClass('error');
                                            return false;
                                        }else{
                                            // 手机统计
                                            // ag_Reg_click_Mobile();
                                            $('.form_first').submit();
                                        }
                                    }
                                });
                            }
                        }
                    });


                }
            });

            //发送短信验证码
            var InterValObj; //timer变量，控制时间
            var count = 120; //间隔函数，1秒执行
            var curCount;//当前剩余秒数
            $('.mobile_action').click(function(){
                $('.ts_wrong').remove();
                $('.al_Input').removeClass('error');
                var mobile = $('input[name="mobile"]').val();
                if(isNull(mobile)){
                    var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
                    $('input[name="mobile"]').parent().after(notice);
                    $('input[name="mobile"]').addClass('error');
                    return false;
                }

                if(!checkMobile(mobile)){
                    var notice = '<div class="ts_wrong"><span id="wrong">手机号码格式错误 请重新输入！</span></div>';
                    $('input[name="mobile"]').parent().after(notice);
                    $('input[name="mobile"]').addClass('error');
                    return false;
                }

                //检测手机号码是否使用过
                var is_used = false;
                $.ajax({
                    type: "POST",
                    url: "sign/validMobile",
                    data: "mobile="+mobile,
                    success: function(msg){
                        if(msg == 1){
                            var notice = '<div class="ts_wrong"><span id="wrong">该手机号码已被注册！</span></div>';
                            $('input[name="mobile"]').parent().after(notice);
                            $('input[name="mobile"]').addClass('error');
                            is_used = true;
                        }else{
                            //设置button效果，开始计时
                            curCount = count;
                            //设置button效果，开始计时
                            $(".mobile_action").attr("disabled", "true");
                            $(".mobile_action").val(curCount + "秒后可重新获取验证码");
                            InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次

                            var skey = $('input[name="skey"]').val();
                            //向后台发送处理数据
                            $.ajax({
                                type: "POST", //用POST方式传输
                                url: 'sign/sendSms', //目标地址
                                data: "mobile=" + mobile,
                                success: function (msg){
                                    if(msg == 1) {
                                        var notice = '<div class="ts_wrong"><span id="wrong">验证码发送成功！</span></div>';
                                        $('input[name="mobile_code"]').parent().after(notice);
                                        $('input[name="mobile_code"]').addClass('error');
                                        return false;
                                    }else{
                                        var notice = '<div class="ts_wrong"><span id="wrong">验证码发送失败！</span></div>';
                                        $('input[name="mobile_code"]').parent().after(notice);
                                        $('input[name="mobile_code"]').addClass('error');
                                        return false;
                                    }
                                }
                            });
                        }
                    }
                });

                function SetRemainTime() {
                    if (curCount == 0) {
                        window.clearInterval(InterValObj);//停止计时器
                        $(".mobile_action").removeAttr("disabled");//启用按钮
                        $(".mobile_action").val("获取验证码");
                        code = ""; //清除验证码。如果不清除，过时间后，输入收到的验证码依然有效
                    }
                    else {
                        curCount--;
                        $(".mobile_action").val(curCount + "秒后可重新获取验证码");
                    }
                }
            });

        });

        $(document).keyup(function(event){
            if(event.keyCode ==13){
                if($('.ph').hasClass('focus')){
                    $('#mobile_reg').click(ag_Reg_click_Mobile);
                }
                if($('.em').hasClass('focus')){
                    $('#email_reg').click(ag_Reg_click_Email);
                }
            }
            // else {

            //     $('#email_reg').click(ag_Reg_click_Email);
            // }
        });


        function isNull(str) {
            if (str === null || str === undefined || str.length === 0) {
                return true
            }
            return false;
        };

        function checkMobile(mobile) {
            var pattern = /^1[34578]\d{9}$/;
            return pattern.test(mobile);
        };

        function isEmail(email) {
            var pattern = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
            return(pattern.test(email));
        }


    </script>


</body></html>
