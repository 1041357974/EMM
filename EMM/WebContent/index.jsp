<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>
          英杰会议管理系统
        </title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="format-detection" content="telephone=no">
        <link rel="stylesheet" href="./css/x-admin.css" media="all">
          <link rel="shortcut icon" href="images/meeting.ico" /> 
    </head>
    <body>
        <div class="layui-layout layui-layout-admin">
          <div class="layui-header header header-demo">
                <div class="layui-main">
                    <a class="logo"  >
                        英杰会议管理系统Version1.0
                    </a>
                    <ul class="layui-nav">
                      <li class="layui-nav-item"><img src="./images/logo.png" class="layui-circle" style="border: 2px solid #A9B7B7;" width="35px" alt=""></li>
                      <li class="layui-nav-item">
                        <a href="javascript:;">${loginUser.employeename}</a>
                        <dl class="layui-nav-child"> <!-- 二级菜单 -->
                          <dd><a href="">个人信息</a></dd>
                          <dd><a href="./login.jsp">退出</a></dd>
                        </dl>
                      </li>
                      <!-- <li class="layui-nav-item">
                        <a href="" title="消息">
                            <i class="layui-icon" style="top: 1px;">&#xe63a;</i>
                        </a>
                        </li> -->
                      <li class="layui-nav-item x-index"><a>欢迎您</a></li>
                    </ul>
                </div>
            </div>
            <div class="layui-side layui-bg-black x-side">
                <div class="layui-side-scroll">
                    <ul class="layui-nav layui-nav-tree site-demo-nav" lay-filter="side">       
                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe62d;</i><cite>个人中心</cite>
                            </a>
                            <dl class="layui-nav-child">
                                                                                          
                                    <dd class="">
                                        <a href="javascript:;" _href="./mybooking">
                                            <cite>我的预定</cite>
                                        </a>
                                    </dd>
                              
                             
                                    <dd class="">
                                        <a href="javascript:;" _href="./mymeeting">
                                            <cite> 我的会议</cite>
                                        </a>
                              </dd>                          
                                <dd class="">
                                    <dd class="">
                                        <a href="javascript:;" _href="./upload.jsp">
                                            <cite>文件上传</cite>
                                        </a>
                                    </dd>                                                        
                            </dl>
                        </li>
                       
                            <c:if test="${loginUser.role==1}">                 
                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe612;</i><cite>人员管理</cite>
                            </a>
                            <dl class="layui-nav-child">
                                <dd class="">
                                    <a href="javascript:;" _href="./departments">
                                        <cite>部门管理</cite>
                                    </a>
                                </dd>
                                <dd class="">
                                    <a href="javascript:;" _href="./approveaccount">
                                        <cite>注册审批</cite>
                                    </a>
                                </dd>
                                <dd class="">
                                    <a href="javascript:;" _href="./serachemp">
                                        <cite>搜索员工</cite>
                                    </a>
                                </dd>                           
                            </dl>
                        </li>
                        </c:if>
                        
                      
                        <li class="layui-nav-item">
                            <a class="javascript:;" href="javascript:;">
                                <i class="layui-icon" style="top: 3px;">&#xe614;</i><cite>会议管理</cite>
                            </a>
                            <dl class="layui-nav-child">
                               <c:if test="${loginUser.role==1}"> 
                                <dd class="">
                                    <a href="javascript:;" _href="./addmeetingroom.jsp">
                                        <cite>添加会议室</cite>
                                    </a>
                                </dd>
                                </c:if>
                                <dd class="">
                                    <a href="javascript:;" _href="./getallmr">
                                        <cite>查看会议室</cite>
                                    </a>
                                </dd>
                                <dd class="">
                                    <a href="javascript:;" _href="./bookmeeting">
                                        <cite>预定会议</cite>
                                    </a>
                                </dd>
                                <dd class="">
                                    <a href="javascript:;" _href="./searchmeeting">
                                        <cite>搜索会议</cite>
                                    </a>
                                </dd>
                              
                            </dl>
                        </li>
                        <li class="layui-nav-item" style="height: 30px; text-align: center">
                        </li>
                    </ul>
                </div>

            </div>
            <div class="layui-tab layui-tab-card site-demo-title x-main" lay-filter="x-tab" lay-allowclose="true">
                <div class="x-slide_left"></div>
                <ul class="layui-tab-title">
                    <li class="layui-this">
                        最新通知
                        <i class="layui-icon layui-unselect layui-tab-close">ဆ</i>
                    </li>
                </ul>
                <div class="layui-tab-content site-demo site-demo-body">
                    <div class="layui-tab-item layui-show">
                        <iframe frameborder="0" src="./notifications" class="x-iframe"></iframe>
                    </div>
                </div>
            </div>
            <div class="site-mobile-shade">
            </div>
        </div>
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script src="./js/x-admin.js"></script>
        <script>
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
        </script>
    </body>
</html>