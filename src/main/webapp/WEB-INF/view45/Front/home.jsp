<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


		<title>首页</title>

		<link href="${pageContext.request.contextPath}/static/one/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/static/one/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath}/static/one/basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath}/static/one/css/hmstyle.css" rel="stylesheet" type="text/css"/>
		<link href="${pageContext.request.contextPath}/static/one/css/skin.css" rel="stylesheet" type="text/css" />
		<script src="${pageContext.request.contextPath}/static/one/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/static/one/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
	
	</head>

	<body>
		<div class="hmtop">
			<!--顶部导航条 -->
			<div class="am-container header">
				<ul class="message-l">
					<div class="topMessage">
						<div class="menu-hd">
							
						</div>
					</div>
				</ul>
				<ul class="message-r">
					<div class="topMessage home">
						<div class="menu-hd"><a href="#" target="_top" class="h">商城首页</a></div>
					</div>
					<div class="topMessage my-shangcheng">
						<div class="menu-hd MyShangcheng" onclick="changeAHref()"><a href="#" target="_top" id="myId"><i class="am-icon-user am-icon-fw"></i>个人中心</a></div>
					</div>
					<div class="topMessage mini-cart">
						<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
					</div>
					<div class="topMessage favorite">
						<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a></div>
				</ul>
				</div>

				<!--悬浮搜索框-->

				<div class="nav white">
					<div class="logo"><img src="${pageContext.request.contextPath}/static/one/images/logo.png" /></div>
					<div class="logoBig">
						<li><img src="${pageContext.request.contextPath}/static/one/images/logobig.png" /></li>
					</div>

					<div class="search-bar pr">
						<a name="index_none_header_sysc" href="#"></a>
						<form>
							<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
							<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
						</form>
					</div>
				</div>

				<div class="clear"></div>
			</div>
			<div class="banner">
                      <!--轮播 -->
						<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
							<ul class="am-slides" id="slides">
							<!--  
							<li class="banner1"><a href="introduction.html"><img src="${pageContext.request.contextPath}/static/one/images/ad1.jpg" /></a></li>
								<li class="banner2"><a><img src="${pageContext.request.contextPath}/static/one/images/ad2.jpg" /></a></li>
								<li class="banner3"><a><img src="${pageContext.request.contextPath}/static/one/images/ad3.jpg" /></a></li>
							    <li class="banner4"><a><img src="${pageContext.request.contextPath}/static/one/images/ad4.jpg" /></a></li>	
							</ul>
							-->
						</div>
						<div class="clear"></div>	
			</div>
			<div class="shopNav">
				<div class="slideall">
					
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							
						</div>					
		        				
						<!--侧边导航 -->
						<div id="nav" class="navfull">
							<div class="area clearfix">
								<div class="category-content" id="guide_2">
									
									<div class="category">
										<ul class="category-list" id="js_climit_li">
											<!--  <li class="appliance js_toggle relative first">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/static/one/images/cake.png"></i><a class="ml-22" title="点心">点心/蛋糕</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">蛋糕</span></dt>
																		
																	</dl>
																</div>
															
															</div>
														</div>
													</div>
												</div>
												
											
											</li>
											
											<li class="appliance js_toggle relative first">
												<div class="category-info">
													<h3 class="category-name b-category-name"><i><img src="${pageContext.request.contextPath}/static/one/images/cake.png"></i><a class="ml-22" title="点心">点心/蛋糕</a></h3>
													<em>&gt;</em></div>
												<div class="menu-item menu-in top">
													<div class="area-in">
														<div class="area-bg">
															<div class="menu-srot">
																<div class="sort-side">
																	<dl class="dl-sort">
																		<dt><span title="蛋糕">蛋糕</span></dt>
																		<dd><a title="蒸蛋糕" href="#"><span>蒸蛋糕</span></a></dd>
																		<dd><a title="脱水蛋糕" href="#"><span>脱水蛋糕</span></a></dd>
																		<dd><a title="瑞士卷" href="#"><span>瑞士卷</span></a></dd>
																		<dd><a title="软面包" href="#"><span>软面包</span></a></dd>
																		<dd><a title="马卡龙" href="#"><span>马卡龙</span></a></dd>
																		<dd><a title="千层饼" href="#"><span>千层饼</span></a></dd>
																		<dd><a title="甜甜圈" href="#"><span>甜甜圈</span></a></dd>
																		<dd><a title="蒸三明治" href="#"><span>蒸三明治</span></a></dd>
																		<dd><a title="铜锣烧" href="#"><span>铜锣烧</span></a></dd>
																	</dl>
																</div>
															
															</div>
														</div>
													</div>
												</div>
											</li>-->
										</ul>
									</div>
								</div>

							</div>
						</div>
						
						
						<!--轮播-->
						
						<script type="text/javascript">
							(function() {
								
							});
							$(document).ready(function() {
								
							})
						</script>



					<!--小导航 -->
					<div class="am-g am-g-fixed smallnav">
						<div class="am-u-sm-3">
							<a href="sort.html"><img src="${pageContext.request.contextPath}/static/one/images/navsmall.jpg" />
								<div class="title">商品分类</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="${pageContext.request.contextPath}/static/one/images/huismall.jpg" />
								<div class="title">大聚惠</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="${pageContext.request.contextPath}/static/one/images/mansmall.jpg" />
								<div class="title">个人中心</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="${pageContext.request.contextPath}/static/one/images/moneysmall.jpg" />
								<div class="title">投资理财</div>
							</a>
						</div>
					</div>

					<!--走马灯 -->

					<div class="marqueen">
						<span class="marqueen-title">商城头条</span>
						<div class="demo">

							<ul>
								<li class="title-first"><a target="_blank" href="#">
									<img src="${pageContext.request.contextPath}/static/one/images/TJ2.jpg"></img>
									<span>[特惠]</span>商城爆品1分秒								
								</a></li>
								<li class="title-first"><a target="_blank" href="#">
									<span>[公告]</span>商城与广州市签署战略合作协议
								     <img src="${pageContext.request.contextPath}/static/one/images/TJ.jpg"></img>
								     <p>XXXXXXXXXXXXXXXXXX</p>
							    </a></li>
							    
						<div class="mod-vip">
							<div class="m-baseinfo">
								<a href="${pageContext.request.contextPath}/static/one/person/index.html">
									<img src="${pageContext.request.contextPath}/static/one/images/getAvatar.do.jpg">
								</a>
								<em>
									Hi,<span class="s-name" id="s-name">小叮当</span>
									<a href="#"><p>点击更多优惠活动</p></a>									
								</em>
							</div>
							<div class="member-logout" id="login_register_delete">
								<a class="am-btn-warning btn" href="Index_login" id="index_login">登录</a>
								<a class="am-btn-warning btn" href="Index_register" id="index_register">注册</a>
							</div>
							<div class="member-login">
								<a href="#"><strong>0</strong>待收货</a>
								<a href="#"><strong>0</strong>待发货</a>
								<a href="#"><strong>0</strong>待付款</a>
								<a href="#"><strong>0</strong>待评价</a>
							</div>
							<div class="clear"></div>	
						</div>																	    
							    
								<li><a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a></li>
								<li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
								<li><a target="_blank" href="#"><span>[特惠]</span>家电狂欢千亿礼券 买1送1！</a></li>
								
							</ul>
                        <div class="advTip"><img src="${pageContext.request.contextPath}/static/one/images/advTip.jpg"/></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
			</div>
			<div class="shopMainbg">
				<div class="shopMain" id="shopmain">

					
					<!--热门活动 -->

					<div class="am-container activity ">
						
					
					
					<div id="f1">
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>图书</h4>
							<h3>最新上架</h3>
							
							<span class="more ">
                                 <a href="# ">更多<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFive " id="bookContent">
												
						<!--<div class="am-u-sm-5 am-u-md-3 text-one list">
													
							<a href="# ">
								<img src="${pageContext.request.contextPath}/static/one/images/act1.png" />
								<div class="outer-con ">
									<div class="title ">
										当我恋上你
									</div>
									<div class="sub-title ">
										书和你就是我的全世界
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-7 am-u-md-4 text-two" >
								 <div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/static/one/images/1.jpg" /></a>
							</div>
							
							<div class="am-u-sm-7 am-u-md-4 text-two">
							 	<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/static/one/images/1.jpg" /></a>
							</div>
							
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/static/one/images/1.jpg" /></a>
							</div>
							
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/static/one/images/1.jpg" /></a>
							</div>
							
							
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/static/one/images/1.jpg" /></a>
							</div>
							
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/static/one/images/1.jpg" /></a>
							</div>
							
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/static/one/images/1.jpg" /></a>
							</div>
							
							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
									<i class="am-icon-shopping-basket am-icon-md  seprate"></i>
								</div>
								<a href="# "><img src="${pageContext.request.contextPath}/static/one/images/1.jpg" /></a>
							</div>	
							-->						
					</div>

					<div class="clear "></div>
					</div>
					

   
				
				
				
				 
			
				 
   
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# ">恒望科技</a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="# ">关于恒望</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
								<em>© 2015-2025 Hengwang.com 版权所有</em>
							</p>
						</div>
					</div>

		</div>
		</div>
		<!--引导 -->
		<div class="navCir">
			<li class="active"><a href="home.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="${pageContext.request.contextPath}/static/one/person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>


		<!--菜单 -->
		<div class=tip>
			<div id="sidebar">
				<div id="wrap">
					<div id="prof" class="item ">
						<a href="# ">
							<span class="setting "></span>
						</a>
						<div class="ibar_login_box status_login ">
							<div class="avatar_box ">
								<p class="avatar_imgbox "><img src="${pageContext.request.contextPath}/static/one/images/no-img_mid_.jpg " /></p>
								<ul class="user_info ">
									<li>用户名sl1903</li>
									<li>级&nbsp;别普通会员</li>
								</ul>
							</div>
							<div class="login_btnbox ">
								<a href="# " class="login_order ">我的订单</a>
								<a href="# " class="login_favorite ">我的收藏</a>
							</div>
							<i class="icon_arrow_white "></i>
						</div>

					</div>
					<div id="shopCart " class="item ">
						<a href="# ">
							<span class="message "></span>
						</a>
						<p>
							购物车
						</p>
						<p class="cart_num ">0</p>
					</div>
					<div id="asset " class="item ">
						<a href="# ">
							<span class="view "></span>
						</a>
						<div class="mp_tooltip ">
							我的资产
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="foot " class="item ">
						<a href="# ">
							<span class="zuji "></span>
						</a>
						<div class="mp_tooltip ">
							我的足迹
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="brand " class="item ">
						<a href="#">
							<span class="wdsc "><img src="${pageContext.request.contextPath}/static/one/images/wdsc.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我的收藏
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div id="broadcast " class="item ">
						<a href="# ">
							<span class="chongzhi "><img src="${pageContext.request.contextPath}/static/one/images/chongzhi.png " /></span>
						</a>
						<div class="mp_tooltip ">
							我要充值
							<i class="icon_arrow_right_black "></i>
						</div>
					</div>

					<div class="quick_toggle ">
						<li class="qtitem ">
							<a href="# "><span class="kfzx "></span></a>
							<div class="mp_tooltip ">客服中心<i class="icon_arrow_right_black "></i></div>
						</li>
						<!--二维码 -->
						<li class="qtitem ">
							<a href="#none "><span class="mpbtn_qrcode "></span></a>
							<div class="mp_qrcode " style="display:none; "><img src="${pageContext.request.contextPath}/static/one/images/weixin_code_145.png " /><i class="icon_arrow_white "></i></div>
						</li>
						<li class="qtitem ">
							<a href="#top " class="return_top "><span class="top "></span></a>
						</li>
					</div>

					<!--回到顶部 -->
					<div id="quick_links_pop " class="quick_links_pop hide "></div>

				</div>

			</div>
			<div id="prof-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					我
				</div>
			</div>
			<div id="shopCart-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					购物车
				</div>
			</div>
			<div id="asset-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					资产
				</div>

				<div class="ia-head-list ">
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">优惠券</div>
					</a>
					<a href="# " target="_blank " class="pl ">
						<div class="num ">0</div>
						<div class="text ">红包</div>
					</a>
					<a href="# " target="_blank " class="pl money ">
						<div class="num ">￥0</div>
						<div class="text ">余额</div>
					</a>
				</div>

			</div>
			<div id="foot-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					足迹
				</div>
			</div>
			<div id="brand-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					收藏
				</div>
			</div>
			<div id="broadcast-content " class="nav-content ">
				<div class="nav-con-close ">
					<i class="am-icon-angle-right am-icon-fw "></i>
				</div>
				<div>
					充值
				</div>
			</div>
		</div>
		<script>
			window.jQuery || document.write('<script src="basic/js/jquery.min.js "><\/script>');
		</script>
		<script type="text/javascript " src="${pageContext.request.contextPath}/static/one/basic/js/quick_links.js "></script>
		<script type="text/javascript">
			$(function(){
				text();
				getHeadLineImg();
				getCategory();
				getBookList();
				function getBookList()
				{
					$.ajax({
			            type:"POST",
			            url:"Json_getBookList",
			            dataType:"json",
			            success:function(data){
			            	var bookList = data.bookList;
			            	var bookContent1='<div class="am-u-sm-5 am-u-md-3 text-one list"><a href="#">';
			            	bookContent1+='<img src="${pageContext.request.contextPath}/static/one/images/act1.png" />';
			            	bookContent1+='<div class="outer-con "><div class="title ">当我恋上你</div><div class="sub-title ">书和你就是我的全世界</div>';
			            	bookContent1+='</div></a><div class="triangle-topright"></div></div>'
			            	$.each(bookList, function(i, item) {  
				                  	//alert(item.bookId);
			            			bookContent1+='<div class="am-u-sm-7 am-u-md-4 text-two"><div class="outer-con "><div class="title ">'+item.bookName;
			            			bookContent1+='&nbsp;&nbsp;&nbsp;&nbsp;'+item.bookCategory.categoryName+'</div>';
			            			bookContent1+='<div class="sub-title ">¥'+item.bookPrice;
			            			if(item.discountRate!=1 || item.discountRate!=1.0)
			            			{
			            				bookContent1+='&nbsp;&nbsp;&nbsp;&nbsp;优惠价¥'+item.bookPrice*item.discountRate;
			            			}
			            			bookContent1+='</div><i class="am-icon-shopping-basket am-icon-md  seprate"></i></div>';
			            			bookContent1+='<a href="# "><img src="${pageContext.request.contextPath}'+item.bookPicPath+'" /></a></div>';
				                 });
			            	$("#bookContent").html(bookContent1);
			            	//alert($("#bookContent").html())
			            },
			            error:function(data){
			                console.log("Error: "+data.msg);
			            }
			        });
				}
				function getCategory()
				{
					 $.ajax({
				            type:"POST",
				            url:"Json_getBookCategory",
				            dataType:"json",
				            success:function(data){
				            	var categoryName='';
				            	var bookCategoryId = data.bookCategoryId;
				            	var bookCategoryNameList = data.bookCategoryNameList;
				            	var child = data.child;
				            	//alert();
				            	//alert(child.c1);
				            	//var str = "c";
				            	for(var i=0;i<bookCategoryId.length;i++)
				            	{
				    
				            		categoryName+='<li class="appliance js_toggle relative first"><div class="category-info"><h3 class="category-name b-category-name">';
				            		categoryName+='<a class="ml-22" id="'+bookCategoryId[i]+'" title="'+bookCategoryNameList[i]+'">'+bookCategoryNameList[i]+'</a></h3><em>&gt;</em></div>';
				            		categoryName+='<div class="menu-item menu-in top"><div class="area-in"><div class="area-bg">';
				            		categoryName+='<div class="menu-srot"><div class="sort-side"><dl class="dl-sort"><dt><span id="'+bookCategoryId[i]+'" title="'+bookCategoryNameList[i]+'">'+bookCategoryNameList[i]+'</span></dt>';
				            		
				            		//str+=bookCategoryId[i];
				            		//alert(str);
				            		//alert();
				            		$.each(child[bookCategoryId[i]], function(i, item) {  
						                   if(item!="")
						                	   {
						                	   			categoryName+='<dd><a title="'+item.categoryName+'" href="Index_search?categoryId='+item.categoryId+'" id="'+item.categoryId+'"><span>'+item.categoryName+'</span></a></dd>'
						                	   			//alert(item.categoryName);
						                	   		//$.each(item, function(i, item1)
						                	   				//{
						                	   					//categoryName+='<dd><a title="'+item1.categoryName+'" href="#" id="'+item1.categoryId+'"><span>'+item1.categoryName+'</span></a></dd>'
						                	   					//alert(item1.categoryName);
						                	   				//});
						                	   }
						                 });
				            		
				            		categoryName+='</dl></div></div></div></div></div></li>';
				            	}
				            	//var parsedJson = jQuery.parseJSON(data.child); 
				            	//var child = data.child[0];
				            	//alert(child);
				            	$("#js_climit_li").html(categoryName);
				            	getCategoryAction();
				            },
				            error:function(data){
				                console.log("Error: "+data.msg);
				            }
				        });
				}
				function getCategoryAction()
				{
					$("li").hover(function() {
						$(".category-content .category-list li.first .menu-in").css("display", "none");
						$(".category-content .category-list li.first").removeClass("hover");
						$(this).addClass("hover");
						$(this).children("div.menu-in").css("display", "block")
					}, function() {
						$(this).removeClass("hover")
						$(this).children("div.menu-in").css("display", "none")
					});
				}
				function getHeadLineImg()
				{
					
					 $.ajax({
				            type:"POST",
				            url:"Json_getHeadLineImg",
				            dataType:"json",
				            success:function(data){
				            	list='';
				            	var arr = data.imgList;
				            	for ( var i = 0; i <arr.length; i++){
				            		var j=i%4;
				            		list+='<li class="banner'+(j+1)+'"><a href="#"><img src="${pageContext.request.contextPath}'+arr[i]+'" /></a></li>';
				            		
				            	}
				            	$(".am-slides").html(list);
				            	$('.am-slider').flexslider();
				            	//alert(list);
				            },
				            error:function(data){
				                console.log("Error: "+data.msg);
				            }
				        });
				}
				function text()
				{
					var nickName='${loginCustomer.userNick}';
					if(nickName!=null && nickName!="")
					{
						//alert(nickName)
						var a = '<a class="am-btn-warning btn" href="FrontLogin_logoutDeal" id="index_logoutDeal">注销</a>'
						$("#s-name").html(nickName);
						$("#index_login").hide();
						$("#Index_register").hide();
						$("#login_register_delete").html(a);
					}
					
				}
			
			});
			function changeAHref()
			{
				var id='${loginCustomer.id}';
				if(id!=null && id!="")
				{
					$("#myId").attr("href","Personal_personal"); 
				}
				else
				{
					alert("请先登入");
				}
			}
		</script>
	</body>

</html>