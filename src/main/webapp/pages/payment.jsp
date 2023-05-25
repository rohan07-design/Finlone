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

<link id="pagestyle"
	href="../css/material-dashboard.min1bb8.css?v=3.0.5" rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link> 

<script src="https://code.jquery.com/jquery-3.7.0.min.js"
	integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
	crossorigin="anonymous"></script>

<script>
    const getAmount = (id) => {
      let amount = document.getElementById("paymentAmount").value;
      let userId = id;
      alert(amount);

      // Send the request to the server
      $.ajax({
        url: "/userpayment/" + userId,
        data: JSON.stringify({
          amount: amount,
          info: "order_request"
        }),
        contentType: "application/json",
        type: "POST",
        dataType: "json",
        success: function (response) {
          if (response.status == "created") {
            // Open payment form
            let options = {
              key: "rzp_test_b2ljmnm5S5yKeE",
              amount: response.amount,
              currency: "INR",
              name: "Finlone",
              description: "Online Loan Company",
              order_id: response.id,
              handler: function (response) {
                alert(response.razorpay_payment_id);
                alert(response.razorpay_order_id);
                alert(response.razorpay_signature);
                swal("Good job!", "You clicked the button!", "success");
              },
              prefill: {
                name: "",
                email: "",
                contact: ""
              },
              notes: {
                address: "Cravita Corporate Office"
              },
              theme: {
                color: "#3399cc"
              }
            };
            let rzp = new Razorpay(options);
            rzp.on('payment.failed', function (response) {
              alert(response.error.code);
              alert(response.error.description);
              alert(response.error.source);
              alert(response.error.step);
              alert(response.error.reason);
              alert(response.error.metadata.order_id);
              alert(response.error.metadata.payment_id);
            });
            setTimeout(() => {
              rzp.open();
            }, 2000);
          }
        },
        error: function (error) {
          console.log("error is there");
          alert("something wrong..!!");
        },
      });
    };

    document.addEventListener('DOMContentLoaded', function () {
      document.querySelector('form').addEventListener('submit', function (event) {
        event.preventDefault(); // Prevent the default form submission
        getAmount(${pay.id}); // Call the getAmount function with the provided user ID
      });
    });
  </script>


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
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	<!-- <script src="../js/paymentScript.js"></script>-->
	<script src="../js/core/popper.min.js"></script>
	<!-- <script src="../js/core/bootstrap.min.js"></script>-->

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


	<!-- <script src="../js/material-dashboard.min1bb8.js?v=3.0.5"></script> -->

</body>

<!-- Mirrored from demos.creative-tim.com/material-dashboard/pages/billing.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 07 Apr 2023 06:07:44 GMT -->

</html>