<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from demos.creative-tim.com/material-dashboard/pages/billing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Apr 2023 06:07:43 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->

<head>
<meta charset="UTF-8" />
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


<link id="pagestyle"
	href="../css/material-dashboard.min1bb8.css?v=3.0.5" rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.7.0.min.js"
	integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
	crossorigin="anonymous"></script>

<style>
.async-hide {
	opacity: 0 !important
}

#allList {
	margin: 2% 3%;
	background-color: #fff;
	padding: 2% 5%;
	border-radius: 30px;
}

#allList th {
	color: #000;
}

#status select {
	padding: 10px 20px;
}

#status {
	margin: auto;
}

#adminImage {
	background:
		url("https://codex-themes.com/scalia/zaro/wp-content/uploads/2014/12/header-background.jpg");
	padding: 2% 0%;
}

#walletForm {
	background-color: #fff;
	margin: 10% 15%;
	padding: 5% 7%;
	border-radius: 30px;
}

#walletForm input {
	font-size: 18px;
	border: 1px solid #7b809a;
	padding-left: 20px;
}

#walletForm label {
	font-size: 18px;
}
</style>
<script>
    (function (a, s, y, n, c, h, i, d, e) {
      s.className += ' ' + y;
      h.start = 1 * new Date;
      h.end = i = function () {
        s.className = s.className.replace(RegExp(' ?' + y), '')
      };
      (a[n] = a[n] || []).hide = h;
      setTimeout(function () {
        i();
        h.end = null
      }, c);
      h.timeout = c;
    })(window, document.documentElement, 'async-hide', 'dataLayer', 4000, {
      'GTM-K9BGS8K': true
    });
  </script>

<script>
    (function (i, s, o, g, r, a, m) {
      i['GoogleAnalyticsObject'] = r;
      i[r] = i[r] || function () {
        (i[r].q = i[r].q || []).push(arguments)
      }, i[r].l = 1 * new Date();
      a = s.createElement(o),
        m = s.getElementsByTagName(o)[0];
      a.async = 1;
      a.src = g;
      m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '../../../www.google-analytics.com/analytics.js', 'ga');
    ga('create', 'UA-46172202-22', 'auto', {
      allowLinker: true
    });
    ga('set', 'anonymizeIp', true);
    ga('require', 'GTM-K9BGS8K');
    ga('require', 'displayfeatures');
    ga('require', 'linker');
    ga('linker:autoLink', ["2checkout.com", "avangate.com"]);
  </script>


<script>
    (function (w, d, s, l, i) {
      w[l] = w[l] || [];
      w[l].push({
        'gtm.start': new Date().getTime(),
        event: 'gtm.js'
      });
      var f = d.getElementsByTagName(s)[0],
        j = d.createElement(s),
        dl = l != 'dataLayer' ? '&l=' + l : '';
      j.async = true;
      j.src =
        '../../../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
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
			<div class="container-fluid py-1 px-3 ">
				<nav aria-label="breadcrumb">
					<h4 class="font-weight-bolder mb-0">
						Payment Process <i class="las la-money-bill-wave"></i>
					</h4>
				</nav>
				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar">
					<div class="ms-md-auto pe-md-3 d-flex align-items-center">
						<div class="input-group input-group-outline">
							<label class="form-label">Type here...</label> <input type="text"
								class="form-control">
						</div>
					</div>
					<ul class="navbar-nav  justify-content-end">
						<li class="nav-item d-flex align-items-center">
							<button class="btn btn-outline-primary btn-sm mb-0 me-3">
								Search <i class="las la-search"></i>
							</button>
						</li>
						<li class="nav-item d-xl-none ps-3 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-body p-0"
							id="iconNavbarSidenav">
								<div class="sidenav-toggler-inner">
									<i class="sidenav-toggler-line"></i> <i
										class="sidenav-toggler-line"></i> <i
										class="sidenav-toggler-line"></i>
								</div>
						</a>
						</li>
						<li class="nav-item px-3 d-flex align-items-center"><a
							href="javascript:;" class="nav-link text-body p-0"> <i
								class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
						</a></li>
						<li class="nav-item dropdown pe-2 d-flex align-items-center">
							<a href="javascript:;" class="nav-link text-body p-0"
							id="dropdownMenuButton" data-bs-toggle="dropdown"
							aria-expanded="false"> <i class="fa fa-bell cursor-pointer"></i>
						</a>
							<ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4"
								aria-labelledby="dropdownMenuButton">
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="javascript:;">
										<div class="d-flex py-1">
											<div class="my-auto">
												<img src="../assets/img/team-2.jpg"
													class="avatar avatar-sm  me-3 ">
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold">New message</span> from Laur
												</h6>
												<p class="text-xs text-secondary mb-0">
													<i class="fa fa-clock me-1"></i> 13 minutes ago
												</p>
											</div>
										</div>
								</a></li>
								<li class="mb-2"><a class="dropdown-item border-radius-md"
									href="javascript:;">
										<div class="d-flex py-1">
											<div class="my-auto">
												<img
													src="https://demos.creative-tim.com/material-dashboard/assets/img/small-logos/logo-spotify.svg"
													class="avatar avatar-sm bg-gradient-dark  me-3 ">
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">
													<span class="font-weight-bold">New album</span> by Travis
													Scott
												</h6>
												<p class="text-xs text-secondary mb-0">
													<i class="fa fa-clock me-1"></i> 1 day
												</p>
											</div>
										</div>
								</a></li>
								<li><a class="dropdown-item border-radius-md"
									href="javascript:;">
										<div class="d-flex py-1">
											<div
												class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
												<svg width="12px" height="12px" viewBox="0 0 43 36"
													version="1.1" xmlns="http://www.w3.org/2000/svg"
													xmlns:xlink="../../../www.w3.org/1999/xlink.html">
                          <title>credit-card</title>
                          <g stroke="none" stroke-width="1" fill="none"
														fill-rule="evenodd">
                            <g
														transform="translate(-2169.000000, -745.000000)"
														fill="#FFFFFF" fill-rule="nonzero">
                              <g
														transform="translate(1716.000000, 291.000000)">
                                <g
														transform="translate(453.000000, 454.000000)">
                                  <path class="color-background"
														d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"
														opacity="0.593633743"></path>
                                  <path class="color-background"
														d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z">
                                  </path>
                                </g>
                              </g>
                            </g>
                          </g>
                        </svg>
											</div>
											<div class="d-flex flex-column justify-content-center">
												<h6 class="text-sm font-weight-normal mb-1">Payment
													successfully completed</h6>
												<p class="text-xs text-secondary mb-0">
													<i class="fa fa-clock me-1"></i> 2 days
												</p>
											</div>
										</div>
								</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Starts from here-->
		<div id="walletForm">
			<form action="" method="post">
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Amount
						Pay for: </label>
					<ul>
						<li>ID: ${pay.id }</li>
						<li>Name : ${pay.name }</li>
						<li>Email: ${pay.email }</li>
						<li>Mobile No: ${pay.number }</li>
					</ul>
					<input type="text" class="form-control" name="updatedAmount"
						 id="paymentAmount" value=${pay.loanAmount }
						aria-describedby="amountUpdate">
				</div>
				<button type="submit" class="btn btn-success mt-3"
					onclick="getAmount(${pay.id})">
					Proceed <i class="las la-arrow-alt-circle-right"></i>
				</button>
				<button type="submit" class="btn btn-danger mt-3">
					Cancle <i class="las la-times-circle"></i>
				</button>
			</form>
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

	<script src="../js/paymentScript.js"></script>
	<script src="../js/core/popper.min.js"></script>
	<script src="../js/core/bootstrap.min.js"></script>
	
	<script src="../js/plugins/smooth-scrollbar.min.js"></script>
	<script>
    var win = navigator.platform.indexOf('Win') > -1;
    if (win && document.querySelector('#sidenav-scrollbar')) {
      var options = {
        damping: '0.5'
      }
      Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
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