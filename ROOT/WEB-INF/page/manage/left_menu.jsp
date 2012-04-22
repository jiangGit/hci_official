<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>后台管理</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link href="${base}/css/left.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/js/jquery-1.7.1.min.js"></script>


<script type="text/javascript">
	$(window).load(function() {
            var btnTiem = $('.menu-item');
            for(var i = 0; i < btnTiem.length; i++) {
                    (function(arg){
                            var btn = $(btnTiem[arg]).find(".menu-btn");
                            btn.click(function(){
                                    $(btnTiem[arg]).find(".menu-sub").slideToggle();
                                    
                            });
                    })(i)
            }         
	});
</script>
<base target="main">
</head>
<body>
<div id="outer">
	<div id="sidebar">
		<div id="menu">
                        <div class="menu-item">
				<a class="menu-btn" href="javascript:void(0);">成员</a>
				<ul  class="menu-sub">
					<li><a href="/member/new" >添加成员</a></li>
					<li><a href="/members/type/1" >老师</a></li>
					<li><a href="/members/type/2" >研究生</a></li>
					<li><a href="/members/state/2" >毕业成员</a></li>
					<li><a href="/members/state/1" >成员列表</a></li>
					<li><a href="/members/free" >空闲成员</a></li>
					<li><a href="/members/admin" >管理员</a></li>
					<li><a href="/members/state/4" >退出成员</a></li>
					<li><a href="/member_search.html" >查找</a></li>
				</ul>
			</div>
			<div class="menu-item">
				<a class="menu-btn" href="javascript:void(0);">项目</a>
				<ul  class="menu-sub">
					<li><a href="/project/new" >发布项目</a></li>
					<li><a href="/projects/state/1" >项目列表</a></li>
					<li><a href="/projects/state/2" >完成项目</a></li>
					<li><a href="/projects/free/1" >空闲项目</a></li>
					<li><a href="/projects/state/3" >失败项目</a></li>
					<li><a href="/project_search.html" >查找</a></li>
				</ul>
			</div>
			<div class="menu-item">
				<a class="menu-btn" href="javascript:void(0);">部门</a>
				<ul  class="menu-sub">
					<li><a href="/department/new" >创建部门</a></li>
					<li><a href="/departments" >部门列表</a></li>
				</ul>
			</div>
			<div class="menu-item">
				<a class="menu-btn" href="javascript:void(0);">例会</a>
				<ul  class="menu-sub">
					<li><a href="${base }/meeting/new" >发布例会</a></li>
					<li><a href="${base }/meeting/list" >例会列表</a></li>
				</ul>
			</div>
			<div class="menu-item">
				<a class="menu-btn" href="javascript:void(0);">消息</a>
				<ul  class="menu-sub">
					<li><a href="javascript:void(0);" >发部消息</a></li>
					<li><a href="javascript:void(0);" >消息列表</a></li>
				</ul>
			</div>
			<div class="menu-item">
				<a class="menu-btn" href="javascript:void(0);">修改公告</a>
			</div>
                        <div class="menu-item">
				<a class="menu-btn" href="javascript:void(0);">文章列表</a>
			</div>
                        <div class="menu-item">
                            <a class="menu-btn" href="javascript:void(0);">记事本</a>
                            <ul  class="menu-sub">
                                    <li><a href="javascript:void(0);" >创建记事本</a></li>
                            </ul>
                            <ul  class="menu-sub">
                                    <li><a href="javascript:void(0);" >记事本列表</a></li>
                            </ul>
                        </div>
			<div class="menu-item">
                            <a class="menu-btn" href="javascript:void(0);">API</a>
                            <ul  class="menu-sub">
                                    <li><a href="javascript:void(0);" >添加API</a></li>
                            </ul>
                            <ul  class="menu-sub">
                                    <li><a href="javascript:void(0);" >API列表</a></li>
                            </ul>
                        </div>
			<div class="menu-item">
				<a class="menu-btn" href="javascript:void(0);">日志列表</a>
			</div>
		</div>
					
	</div>

</div>
</body>
</html>
