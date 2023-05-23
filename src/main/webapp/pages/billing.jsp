<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Mirrored from demos.creative-tim.com/material-dashboard/pages/billing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Apr 2023 06:07:43 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<title>Material Dashboard 2 by Creative Tim</title>


<link rel="canonical"
	href="../../../www.creative-tim.com/product/material-dashboard.html" />

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
	content="../../../s3.amazonaws.com/creativetim_bucket/products/450/original/material-dashboard.jpg">

<meta property="fb:app_id" content="655968634437471">
<meta property="og:title" content="Material Dashboard 2 by Creative Tim" />
<meta property="og:type" content="article" />
<meta property="og:url" content="dashboard.html" />
<meta property="og:image"
	content="../../../s3.amazonaws.com/creativetim_bucket/products/450/original/material-dashboard.jpg" />
<meta property="og:description"
	content="Material Dashboard 2 is a beautiful Bootstrap 5 admin dashboard with a large number of components, designed to look beautiful and organized. If you are looking for a tool to manage and visualize data about your business, this dashboard is the thing for you." />
<meta property="og:site_name" content="Creative Tim" />


<link href="css/nucleo-icons.css" rel="stylesheet" />
<link href="css/nucleo-svg.css" rel="stylesheet" />

<script src="../../../kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>

<link
	href="../../../fonts.googleapis.com/iconcc0c.css?family=Material+Icons+Round"
	rel="stylesheet">

<link id="pagestyle" href="css/material-dashboard.min1bb8.css?v=3.0.5"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<style>
.async-hide {
	opacity: 0 !important
}

#allList {
	margin: 2% 3%;
	background-color: #fff;
	padding: 2% 20% 2% 3%;
	border-radius: 30px;
}

#allList th {
	color: #000;
}

.demohidden {
	display: none;
}

a, a:hover {
	color: #fff;
}

@media ( max-width : 1370px) {
	#allList .bttn-text {
		display: none;
	}
}

@media ( max-width : 959px) {
	#allList .headingText {
		display: none;
	}
	#allList tbody {
		font-size: 12px;
		font-weight: 500;
	}
	#allList .city, .email {
		display: none;
	}
}

@media ( max-width : 444px) {
	#allList button {
		width: 10px;
	}
	#allList tbody tr i {
		text-align: center;
		width: 100%;
	}
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
	src="../../../api.nepcha.com/js/nepcha-analytics.js"></script>
</head>

<body class="g-sidenav-show  bg-gray-200">


	<noscript>
		<iframe
			src="../../../www.googletagmanager.com/ns26b6.html?id=GTM-NKDMSK6"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>

	<aside
		class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark"
		id="sidenav-main">
		<div class="sidenav-header">
			<i
				class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
				aria-hidden="true" id="iconSidenav"></i> <a class="navbar-brand m-0"
				href="dashboard-2.html" target="_blank"> <i
				class="las la-wallet la-2x" style="color: #fff;"></i> <span
				class="ms-1 font-weight-bold text-white" style="font-size: 20px;">Finlone</span>
			</a>
		</div>
		<hr class="horizontal light mt-0 mb-2">
		<div class="collapse navbar-collapse  w-auto "
			id="sidenav-collapse-main">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link text-white " href="../">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="las la-th-large la-2x"></i>
						</div> <span class="nav-link-text ms-1">Dashboard</span>
				</a></li>
				<li class="nav-item"><a class="nav-link text-white "
					href="tables">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="las la-user-plus la-2x"></i>
						</div> <span class="nav-link-text ms-1">Add Applicant</span>
				</a></li>
				<li class="nav-item"><a
					class="nav-link text-white active bg-gradient-primary" href="">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="las la-coins la-2x"></i>
						</div> <span class="nav-link-text ms-1">Loan Details</span>
				</a></li>
				<li class="nav-item"><a class="nav-link text-white "
					href="pending_amount">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="las la-file-invoice-dollar la-2x"></i>
						</div> <span class="nav-link-text ms-1">Pending Amount</span>
				</a></li>
				<li class="nav-item"><a class="nav-link text-white "
					href="collectedLoans">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="las la-rupee-sign la-2x"></i>
						</div> <span class="nav-link-text ms-1">Collected Loans</span>
				</a></li>
				<li class="nav-item"><a class="nav-link text-white "
					href="transactions">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="las la-credit-card la-2x"></i>
						</div> <span class="nav-link-text ms-1">Transactions</span>
				</a></li>
				<li class="nav-item mt-3">
					<h6
						class="ps-4 ms-2 mb-4 text-uppercase text-xs text-white font-weight-bolder opacity-8">Account
						pages</h6>
				</li>
				<li class="nav-item"><a
					class="nav-link text-white active bg-gradient-primary"
					href="profile">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="las la-user-cog la-2x"></i>
						</div> <span class="nav-link-text ms-1">ADMIN</span>
				</a></li>
				<li class="nav-item"><a class="nav-link text-white "
					href="sign-in">
						<div
							class="text-white text-center me-2 d-flex align-items-center justify-content-center">
							<i class="las la-arrow-circle-left la-2x"></i>
						</div> <span class="nav-link-text ms-1">LogOut</span>
				</a></li>
			</ul>
		</div>

	</aside>
	<main
		class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">

		<nav
			class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl mt-4"
			id="navbarBlur" data-scroll="true">
			<div class="container-fluid py-1 px-3 ">
				<nav aria-label="breadcrumb">
					<h4 class="font-weight-bolder mb-0">
						Loan Details <i class="las la-coins"></i>
					</h4>
				</nav>
				<div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
					id="navbar">
					<div class="ms-md-auto pe-md-3 d-flex align-items-center">
						<div class="input-group input-group-outline">
							<label class="form-label">Enter Name or Email..</label> <input
								type="text" class="form-control" id="getData">
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

		<div id="allList">
			<table class="table" id="allUserData">
				<thead>
					<tr>
						<th scope="col"><span class="headingText">ID</span></th>
						<th scope="col"><span class="headingText">Name</span> <i
							class="las la-user"></i></th>
						<th scope="col"><span class="headingText">Contact No</span> <i
							class="las la-phone"></i></th>
						<th scope="col" class="city"><span class="headingText">Address</span>
							<i class="las la-map-marker"></i></th>
						<th scope="col" class="email"><span class="headingText">Email
								Address</span> <i class="las la-envelope"></i></th>
						<th scope="col"><span class="headingText">User</span> <i
							class="las la-user-circle"></i></th>
						<th scope="col"><span class="headingText">Document
								Type</span> <i class="las la-user-circle"></i></th>
						<th scope="col"><span class="headingText">Requsted
								Amount</span> <i class="las la-rupee-sign"></i></th>
						<th scope="col" style=""><span class="headingText">Status</span>
							<i class="las la-question-circle"></i></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list }" var="e">
						<tr>
							<td scope="row" class="id">${e.id}</td>
							<td class="name">${e.name }</td>
							<td class="number">${e.number }</td>
							<td class="city">${e.city }</td>
							<td class="email">${e.email }</td>
							<td class="typeOfApplicant">${e.typeOfApplicant }</td>
							<td class="typeOfProof">${e.typeOfProof }</td>
							<td class="amount">${e.loanAmount }<i
								class="las la-rupee-sign"></i></td>
							<td><c:if test="${e.status eq 'verified'}">
									<button class="btn btn-sm btn-success"
										onclick="confirmPayment(${e.id})">
										<span class="btn-text">${e.status }</span> <i
											class="las la-check-circle la-2x"></i>
									</button>
								</c:if> <c:if test="${e.status eq 'unverified'}">
									<button type="submit" class="btn btn-sm btn-danger">
										<span class="btn-text"><a href="billing/${e.id}"
											style="text-decoration: 'none'; color: #fff;">${e.status }</a></span>
										<i class="las la-check-circle la-2x"></i>
									</button>
								</c:if></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
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
					href="../../../www.creative-tim.com/product/material-dashboard-pro.html">Free
					Download</a> <a class="btn btn-outline-dark w-100"
					href="../../../www.creative-tim.com/learning-lab/bootstrap/overview/material-dashboard.html">View
					documentation</a>
				<div class="w-100 text-center">
					<a class="github-button"
						href="../../../github.com/creativetimofficial/material-dashboard.html"
						data-icon="octicon-star" data-size="large" data-show-count="true"
						aria-label="Star creativetimofficial/material-dashboard on GitHub">Star</a>
					<h6 class="mt-3">Thank you for sharing!</h6>
					<a
						href="../../../twitter.com/intent/tweet9a8c.html?text=Check%20Material%20UI%20Dashboard%20made%20by%20%40CreativeTim%20%23webdesign%20%23dashboard%20%23bootstrap5&amp;url=https%3A%2F%2Fwww.creative-tim.com%2Fproduct%2Fsoft-ui-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-twitter me-1" aria-hidden="true"></i> Tweet
					</a> <a
						href="../../../m.facebook.com/loginbf0d.html?u=https://www.creative-tim.com/product/material-dashboard"
						class="btn btn-dark mb-0 me-2" target="_blank"> <i
						class="fab fa-facebook-square me-1" aria-hidden="true"></i> Share
					</a>
				</div>
			</div>
		</div>
	</div>

	<script src="js/core/popper.min.js"></script>
	<script src="js/core/bootstrap.min.js"></script>
	<script src="js/plugins/perfect-scrollbar.min.js"></script>
	<script src="js/plugins/smooth-scrollbar.min.js"></script>
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

	<script async defer src="../../../buttons.github.io/buttons.js"></script>

	<script src="js/material-dashboard.min1bb8.js?v=3.0.5"></script>
	<script defer
		src="../../../static.cloudflareinsights.com/beacon.min.js/v2b4487d741ca48dcbadcaf954e159fc61680799950996"
		integrity="sha512-D/jdE0CypeVxFadTejKGTzmwyV10c1pxZk/AqjJuZbaJwGMyNHY3q/mTPWqMUnFACfCTunhZUVcd4cV78dK1pQ=="
		data-cf-beacon='{"rayId":"7b4015c5cf87f4a4","version":"2023.3.0","r":1,"b":1,"token":"1b7cbb72744b40c580f8633c6b62637e","si":100}'
		crossorigin="anonymous"></script>
	<script src="js/searchUser.js"></script>
	<script>
		function confirmPayment(id) {
			if (confirm("Are you sure you want to proceed with the payment?")) {
				window.location.href = "/confirm-payment/"+id;
			}
		}
	</script>
</body>

<!-- Mirrored from demos.creative-tim.com/material-dashboard/pages/billing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Apr 2023 06:07:44 GMT -->

</html>