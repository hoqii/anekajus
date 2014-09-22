<!DOCTYPE html>
<html lang="en" ng-app="hoqii-site">
	<head>
		<meta charset="utf-8">
		<title>${(site.description!(site.name!""))}</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="<@s.url value="${templatePath}" />/bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="<@s.url value="${templatePath}" />/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		
		<link href="<@s.url value="${templatePath}" />/themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="<@s.url value="${templatePath}" />/themes/css/flexslider.css" rel="stylesheet"/>
		<link href="<@s.url value="${templatePath}" />/themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="<@s.url value="${templatePath}" />/themes/js/jquery-1.7.2.min.js"></script>
		<script src="<@s.url value="${templatePath}" />/bootstrap/js/bootstrap.min.js"></script>				
		<script src="<@s.url value="${templatePath}" />/themes/js/superfish.js"></script>	
		<script src="<@s.url value="${templatePath}" />/themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>
			<script src="<@s.url value="${templatePath}" />/http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="<@s.url value="${templatePath}" />/js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>		
		<div id="top-bar" class="container">
			<div class="row">
				<div class="span4">
					<form action="<@s.url value="${request.servletPath}" />" method="GET" class="search_form">
						<@s.hidden name="c" />
						<input name="q" value="${q!}" type="text" class="input-block-level search-query" Placeholder="Cari ...">
					</form>
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">
							<li><a href="<@s.url value="/site/${site.name!''}" />">Beranda</a></li>
							<li><a href="<@s.url value="/site/${site.name!''}/news" />">Berita</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="<@s.url value="/site/${site.name!''}" />" class="logo pull-left">
						<h1>${(site.description!(site.name!""))}</h1>
					</a>
					<nav id="menu" class="pull-right" ng-controller="hoqii-category">
						<ul>
							<li ng-repeat="c in categories">
								<a href="?c={{c.name}}&q=${q}">{{c.name}}</a>
							</li>
							<#--
							<li>
								<a href="<@s.url value="${templatePath}" />/./products.html">Woman</a>					
								<ul>
									<li><a href="<@s.url value="${templatePath}" />/./products.html">Lacinia nibh</a></li>									
									<li><a href="<@s.url value="${templatePath}" />/./products.html">Eget molestie</a></li>
									<li><a href="<@s.url value="${templatePath}" />/./products.html">Varius purus</a></li>									
								</ul>
							</li>
							-->
						</ul>
					</nav>
				</div>
			</section>
			<section class="header_text">
				${site.description!}
			</section>
			
			<section class="header_text sub">
				<h4><span>Detil Produk</span></h4>
			</section>
			<section class="main-content" ng-controller="hoqii-product-detail">
				<div class="row">
					<div class="span9">
						<div class="row">
							<div class="span4">
								<a href="#" class="thumbnail" data-fancybox-group="group1" title="Description 1">
									<img src="<@s.url value="/api/product/image/" />{{product.id}}" width="100%" alt="{{product.name}}">
								</a>
							</div>
							<div class="span5">
								<address>
									<strong>Nama Produk:</strong> <span>{{product.name}}</span><br>
									<strong>Kategori:</strong> <span>{{product.parentCategory.name}}</span><br>
									<strong>Deskripsi:</strong> <span>{{product.description}}</span><br>
								</address>									
								<h4><strong>Harga: <small>Rp</small>{{product.sellPrice}}</strong></h4>
							</div>
						</div>
					</div>				
				</div>
			</section>
			<br>
			<hr>
			<section class="main-content" ng-controller="hoqii-catalog">
				<div class="row">
					<div class="span12">													
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Produk <strong>Lain</strong></span></span></span>
								</h4>
								<ul class="thumbnails">
									<li class="span3" ng-repeat="p in products">
										<div class="product-box">
											<span class="sale_tag"></span>
											<p>
												<a href="<@s.url value="/site/${site.name!}/p/" />{{p.id}}">
													<img src="<@s.url value="/api/product/image/" />{{p.id}}" alt="" />
												</a>
											</p>
											<a href="<@s.url value="/site/${site.name!}/p/" />{{p.id}}" class="title">
												{{p.name}}
											</a>
											<br/>
											<a href="<@s.url value="/site/${site.name!}/p/" />{{p.id}}" class="category">
												{{p.description}}
											</a>
											<p class="price"><small>Rp</small>{{p.sellPrice}}</p>
										</div>
									</li>
								</ul>
							</div>						
						</div>
					</div>				
				</div>
			</section>
			<section id="footer-bar">
				<div class="row">
					<div class="span3">
						<h4>Navigation</h4>
						<ul class="nav">
							<li><a href="<@s.url value="${templatePath}" />/./index.html">Homepage</a></li>  
						</ul>					
					</div>
					<div class="span4">
						<h4>My Account</h4>
						<ul class="nav">
						</ul>
					</div>
					<div class="span5">
					</div>					
				</div>
			</section>
			<section id="copyright">
				<span>&copy; Hoqii</span>
			</section>
		</div>
		<script src="<@s.url value="${templatePath}" />/themes/js/common.js"></script>
		<script src="<@s.url value="${templatePath}" />/themes/js/jquery.flexslider-min.js"></script>
		<#include "/themes/application.ftl" />
		<script type="text/javascript">
			$(function() {
				$(document).ready(function() {
					$('.flexslider').flexslider({
						animation: "fade",
						slideshowSpeed: 4000,
						animationSpeed: 600,
						controlNav: false,
						directionNav: true,
						controlsContainer: ".flex-container" // the container that holds the flexslider
					});
				});
			});
		</script>
    </body>
</html>