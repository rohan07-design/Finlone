<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/material-dashboard/pages/billing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Apr 2023 06:07:43 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76" href="../img/apple-icon.png">
<link rel="icon" type="image/png" href="../img/favicon.png">
<title>Material Dashboard 2 by Creative Tim</title>


<link rel="canonical"
	href="../../../../www.creative-tim.com/product/material-dashboard.html" />

<meta name="keywords"
	content="creative tim, html dashboard, html css dashboard, web dashboard, bootstrap 5 dashboard, bootstrap 5, css3 dashboard, bootstrap 5 admin, Material Dashboard bootstrap 5 dashboard, frontend, responsive bootstrap 5 dashboard, free dashboard, free admin dashboard, free bootstrap 5 admin dashboard">
<meta name="description"
	content="Material Dashboard 2 is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful and organized. If you are looking for a tool to manage and visualize data about your business, this dashboard is the thing for you.">

<meta name="twitter:card" content="product">
<meta name="twitter:site" content="@creativetim">
<meta name="twitter:title"
	content="Material Dashboard 2 by Creative Tim">
<meta name="twitter:description"
	content="Material Dashboard 2 is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful and organized. If you are looking for a tool to manage and visualize data about your business, this dashboard is the thing for you.">
<meta name="twitter:creator" content="@creativetim">
<meta name="twitter:image"
	content="../../../../s3.amazonaws.com/creativetim_bucket/products/450/original/material-dashboard.jpg">

<meta property="fb:app_id" content="655968634437471">
<meta property="og:title" content="Material Dashboard 2 by Creative Tim" />
<meta property="og:type" content="article" />
<meta property="og:url" content="dashboard.html" />
<meta property="og:image"
	content="../../../../s3.amazonaws.com/creativetim_bucket/products/450/original/material-dashboard.jpg" />
<meta property="og:description"
	content="Material Dashboard 2 is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful and organized. If you are looking for a tool to manage and visualize data about your business, this dashboard is the thing for you." />
<meta property="og:site_name" content="Creative Tim" />

<link href="../css/nucleo-icons.css" rel="stylesheet" />
<link href="../css/nucleo-svg.css" rel="stylesheet" />

<script src="../../../../kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>

<link
	href="../../../../fonts.googleapis.com/iconcc0c.css?family=Material+Icons+Round"
	rel="stylesheet">

<link id="pagestyle"
	href="../css/material-dashboard.min1bb8.css?v=3.0.5" rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<style>
.async-hide {
	opacity: 0 !important
}

#container {
	background-color: #fff;
	margin: 5% 10%;
	padding: 4% 6%;
	border-radius: 20px;
}

#container input {
	font-size: 18px;
	border: 1px solid #7b809a;
	padding-left: 20px;
}

.input-group-append {
	cursor: pointer;
}

#submitData {
	margin-top: auto;
}
</style>
<script>
	(function(a, s, y, n, c, h, i, d, e) {
		s.className += ' ' + y;
		h.start = 1 * new Date;
		h.end = i = function() {
			s.className = s.className.replace(RegExp(' ?' + y), '')
		};
		(a[n] = a[n] || []).hide = h;
		setTimeout(function() {
			i();
			h.end = null
		}, c);
		h.timeout = c;
	})(window, document.documentElement, 'async-hide', 'dataLayer', 4000, {
		'GTM-K9BGS8K' : true
	});
</script>

<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'../../../www.google-analytics.com/analytics.js', 'ga');
	ga('create', 'UA-46172202-22', 'auto', {
		allowLinker : true
	});
	ga('set', 'anonymizeIp', true);
	ga('require', 'GTM-K9BGS8K');
	ga('require', 'displayfeatures');
	ga('require', 'linker');
	ga('linker:autoLink', [ "2checkout.com", "avangate.com" ]);
</script>


<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '../../../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-NKDMSK6');
</script>



<script defer data-site="demos.creative-tim.com"
	src="../../../../api.nepcha.com/js/nepcha-analytics.js"></script>
</head>

<body class="g-sidenav-show  bg-gray-200">


	<noscript>
		<iframe
			src="../../../../www.googletagmanager.com/ns26b6.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>


	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl mt-4"
			id="navbarBlur" data-scroll="true">
			<div class="container-fluid">
				<nav aria-label="breadcrumb">
					<h2 class="font-weight-bolder text-center" id="heading">
						Download Transactions <i class="las la-arrow-circle-down"></i>
					</h2>
				</nav>
			</div>
		</nav>
		<!-- Starts from here-->
		<div id="container">
			<form action="/getAllTransactions" method="post">
				<div class="row row-cols-2">
					<div class="col" id="fromDate">
						<label for="date" class="col col-form-label">From Date</label>
						<div class="">
							<div class="input-group date" id="datepicker">
								<input type="date" class="form-control" id="date"
									name="startDate" /> <span class="input-group-append"> <span
									class="input-group-text bg-light d-block"> <i
										class="fa fa-calendar"></i>
								</span>
								</span>
							</div>
						</div>
					</div>
					<div class="col" id="toDate">
						<label for="date" class="col col-form-label">To Date</label>
						<div class="">
							<div class="input-group date" id="datepicker">
								<input type="date" class="form-control" id="date" name="endDate" />
								<span class="input-group-append"> <span
									class="input-group-text bg-light d-block"> <i
										class="fa fa-calendar"></i>
								</span>
								</span>
							</div>
						</div>
					</div>
					<div class="col mt-5" id="submitData">
						<div class="">
							<div class="input-group date" id="datepicker">
								<button class="btn bg-gradient-success" type="submit">
									Get Transactions <i class="las la-chevron-circle-right"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			<div id="allDetails">
			<c:forEach items="${dataList}" var="e">
				<p>${e.id}</p>
				</c:forEach>
			</div>
		</div>
	</main>
	<div class="fixed-plugin">

		<div class="card shadow-lg">
			<div class="card-header pb-0 pt-3">
				<div class="float-start">
					<h5 class="mt-3 mb-0">Material UI Configurator</h5>
					<p>See our dashboard options.</p>
				</div>
				<div class="float-end mt-4">
					<button
						class="btn btn-link text-dark p-0 fixed-plugin-close-button">
						<i class="material-icons">clear</i>
					</button>
				</div>

			</div>
			<hr class="horizontal dark my-1">
			<div class="card-body pt-sm-3 pt-0">

				<div>
					<h6 class="mb-0">Sidebar Colors</h6>
				</div>
				<a href="javascript:void(0)" class="switch-trigger background-color">
					<div class="badge-colors my-2 text-start">
						<span class="badge filter bg-gradient-primary active"
							data-color="primary" onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-dark" data-color="dark"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-info" data-color="info"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-success" data-color="success"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-warning" data-color="warning"
							onclick="sidebarColor(this)"></span> <span
							class="badge filter bg-gradient-danger" data-color="danger"
							onclick="sidebarColor(this)"></span>
					</div>
				</a>

				<div class="mt-3">
					<h6 class="mb-0">Sidenav Type</h6>
					<p class="text-sm">Choose between 2 different sidenav types.</p>
				</div>
				<div class="d-flex">
					<button class="btn bg-gradient-dark px-3 mb-2 active"
						data-class="bg-gradient-dark" onclick="sidebarType(this)">Dark</button>
					<button class="btn bg-gradient-dark px-3 mb-2 ms-2"
						data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
					<button class="btn bg-gradient-dark px-3 mb-2 ms-2"
						data-class="bg-white" onclick="sidebarType(this)">White</button>
				</div>
				<p class="text-sm d-xl-none d-block mt-2">You can change the
					sidenav type just on desktop view.</p>

				<div class="mt-3 d-flex">
					<h6 class="mb-0">Navbar Fixed</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="navbarFixed" onclick="navbarFixed(this)">
					</div>
				</div>
				<hr class="horizontal dark my-3">
				<div class="mt-2 d-flex">
					<h6 class="mb-0">Light / Dark</h6>
					<div class="form-check form-switch ps-0 ms-auto my-auto">
						<input class="form-check-input mt-1 ms-auto" type="checkbox"
							id="dark-version" onclick="darkMode(this)">
					</div>
				</div>
				<hr class="horizontal dark my-sm-4">
				<a class="btn bg-gradient-info w-100"
					href="../../../../www.creative-tim.com/product/material-dashboard-pro.html">Free
					Download</a> <a class="btn btn-outline-dark w-100"
					href="../../../../www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard.html">View
					documentation</a>
				<div class="w-100 text-center">
					<a class="github-button"
						href="../../../../github.com/creativetimofficial/material-dashboard.html"
						data-icon="octicon-star" data-size="large" data-show-count="true"
						aria-label="Star creativetimofficial/material-dashboard on GitHub">Star</a>
					<h6 class="mt-3">Thank you for sharing!</h6>
					<a
						href="../../../../twitter.com/intent/tweet9a8c.html?text=Check%20Material%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
					</a> <a
						href="../../../../m.facebook.com/loginbf0d.html?u=https://www.creative-tim.com/product/material-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
					</a>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function() {
			$('#datepicker').datepicker();
		});
	</script>
	<script src="../js/core/popper.min.js"></script>
	<script src="../js/core/bootstrap.min.js"></script>
	<script src="../js/plugins/perfect-scrollbar.min.js"></script>
	<script src="../js/plugins/smooth-scrollbar.min.js"></script>
	<script>
		var win = navigator.platform.indexOf('Win') > -1;
		if (win && document.querySelector('#sidenav-scrollbar')) {
			var options = {
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>

	<script async defer src="../../../../buttons.github.io/buttons.js"></script>

	<script src="../js/material-dashboard.min1bb8.js?v=3.0.5"></script>
	<script defer
		src="../../../../static.cloudflareinsights.com/beacon.min.js/v2b4487d741ca48dcbadcaf954e159fc61680799950996"
		integrity="sha512-D/jdE0CypeVxFadTejKGTzmwyV10c1pxZk/AqjJuZbaJwGMyNHY3q/mTPWqMUnFACfCTunhZUVcd4cV78dK1pQ=="
		data-cf-beacon='{"rayId":"7b4015c5cf87f4a4","version":"2023.3.0","r":1,"b":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
		crossorigin="anonymous"></script>

</body>

<!-- Mirrored from demos.creative-tim.com/material-dashboard/pages/billing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Apr 2023 06:07:44 GMT -->

</html>