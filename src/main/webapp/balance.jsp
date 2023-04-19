<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sant Nagebaba Multistate</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>
<style>
.bg-dark {
	background-color: #343a40;
	color: white;
}

.btn-primary {
	display: inline-block;
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #fff;
	text-align: center;
	text-decoration: none;
	vertical-align: middle;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
	border: 1px solid #0d6efd;
	border-radius: 0.375rem;
	background-color: #0d6efd;
	transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out,
		border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.bg-primary {
	background-color: #007bff;
}

.btn-info {
	color: #fff;
	background-color: #17a2b8;
	border-color: #17a2b8;
}

form {
	display: inline-flex;
	margin-left: 33%;
	border: 2px solid black;
	padding: 30px;
	border-radius: 5px;
}

body {
	background-color: rgb(227, 238, 248);
}

input {
	width: 500px;
	padding: 5px;
	margin: 5px;
	border-radius: 5px;
	background-color: rgb(222, 222, 247);
}
</style>
<body>
    <nav class="navbar bg-dark">
        <a href="index.html"><img src="https://www.nagebabamultistate.in/uploads/163997629750642829.jpg" alt="Error"
                class="navbar-brand ms-2"></a>
        <ul class="list-inline d-inline-block ">
            <li class="list-inline-item border-end pe-3 ">
                <a href="mailto:info@nagebabamultistate.com">info@nagebabamultistate.com</a>
            </li>
            <li class="list-inline-item  pe-3">
                <a href="callto:95525 54010"><span>+91
                        95525 54010</span></a>
                <a class=" list-inline-item btn btn-primary ms-5" href="https://www.nagebabamultistate.in/About">About Us</a>
             
            </li>
            <li>
            </li>
        </ul>
    </nav>
    <img src="https://www.nagebabamultistate.in/uploads/slider-1641392740-52221.jpg" alt="Error" width="100%"
        style="height: 500px;">
    <div class="bg-dark text-white " style="height: 30px;">
        <span>

            <marquee direction="left" scroldelay="10">
				<ul>
					<li class="d-inline-block me-5">Nagebaba Security Cover 700 Rs
365 days security </li>
					<li class="d-inline-block me-5">Nagebaba Phone Pay, QR CODE and
UPI facility|</li>
					<li class="d-inline-block me-5">Nagebaba Smart Card coming soon|</li>

				</ul>
			</marquee>
        </span>
    </div>
    <div class="row border border-black">
        <div class="col-md-2 col-6 text-center mb-2">
            <div class="card border-0 shadow m-2">

                <div class="card-body p-2">
                    <h5>New Account</h5>
                    <a href="create.jsp" type="a" class="btn btn-info border-0 btn-sm mb-3">Open Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-2 col-6 text-center mb-2">
            <div class="card border-0 shadow m-2">

                <div class="card-body p-2">
                    <h5>Balance</h5>
                    <a href="balance.jsp" type="a" class="btn btn-info border-0 btn-sm mb-3">Check Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-2 col-6 text-center mb-2">
            <div class="card border-0 shadow m-2">

                <div class="card-body p-2">
                    <h5>Deposit </h5>
                    <a href="deposit.jsp" type="a" class="btn btn-info border-0 btn-sm mb-3">Deposit Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-2 col-6 text-center mb-2">
            <div class="card border-0 shadow m-2">

                <div class="card-body p-2">
                    <h5>Withdraw</h5>
                    <a href="withdraw.jsp" type="a" class="btn btn-info border-0 btn-sm mb-3">Withdraw Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-2 col-6 text-center mb-2">
            <div class="card border-0 shadow m-2">

                <div class="card-body p-2">
                    <h5>Transfer</h5>
                    <a href="transfer.jsp" type="a" class="btn btn-info border-0 btn-sm mb-3">Transfer Now</a>
                </div>
            </div>
        </div>
        <div class="col-md-2 col-6 text-center mb-2">
            <div class="card border-0 shadow m-2">

                <div class="card-body p-2">
                    <h5>Close Account</h5>
                    <a href="closeaccount.jsp" type="a" class="btn btn-info border-0 btn-sm mb-3">Close Now</a>
                </div>
            </div>
        </div>
        <%
       if(request.getAttribute("balance")!=null)
{
	out.println("<html><h2><center>"+request.getAttribute("balance")+"</center></h2></html>");
}
       
        %>

		<div class="container-fluid mb-3">
			<div>
				<form action="balance1.jsp" name="F1" method="post">
					<dl>
						<dt>Account Number</dt>
						<dd>
							<input type="number" name="accno" id="accno" placeholder="Enter Account Number">
						</dd>
						<dt>UserName</dt>
						<dd>
							<input type="text" name="uname" id="uname"
								placeholder="Enter UserName " required minlength="4">
						</dd>
						<dt>Password</dt>
						<dd>
							<input type="password" name="pword" id="pword"
								placeholder="Enter Password" required minlength="4">
						</dd>
						
						
						<button class="btn btn-primary" type="submit">Check Now</button>
					</dl>

				</form>

			</div>
		</div>




		<div class="row bg-primary ps-5 p-5">
			<div class="col-lg-3 col-sm-6 mb-4 mb-lg-0">
				<div class="row align-items-center">
					<div class="col-8">
						<h3 class="text-white mb-0">
							<span class="count">100</span>+
						</h3>
						<span class="text-white font-weight-bold">Awards</span>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 mb-4 mb-lg-0">
				<div class="row align-items-center no-gutters">
					<div class="col-8">
						<h3 class="text-white mb-0">
							<span class="count">500000</span>+
						</h3>
						<span class="text-white font-weight-bold">Satisfied
							Customers</span>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 mb-4 mb-lg-0">
				<div class="row align-items-center no-gutters">
					<div class="col-8">
						<h3 class="text-white mb-0">
							<span class="count">1000 CR</span>+
						</h3>
						<span class="text-white font-weight-bold">Savings</span>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-sm-6 mb-4 mb-lg-0">
				<div class="row align-items-center no-gutters">
					<div class="col-8">
						<h3 class="text-white mb-0">
							<span class="count">57</span>+
						</h3>
						<span class="text-white font-weight-bold">Branches</span>
					</div>
				</div>
			</div>
		</div>
		<div class="footer row bg-dark text-light justify-content-between">
			<div class="col-lg-5 p-5 justify-content-center mb-5 text-center">
				<img
					src="https://www.nagebabamultistate.in/assets/images/logo/logo.png"
					alt="" height="150px">
				<p>
				<h3 class="mb-5">Shree Sant Nagebaba Multistate Co. Op. Credit
					Society Ltd. Ahmednagar</h3>
				Sant Nagebaba Multistate offers its customers a wide range of
				savings accounts with various features and benefits Provides an
				option to select from a range. One of financial and technical
				assistance to developing rural areas is an important source. Ours is
				to help people help themselves and their environment by providing
				resources is the goal.
				</p>

			</div>
			<div class="mt-5 col-md-3  ">
				<div>
					<h5 class="text-white mb-4">More Information</h5>
					<ul class="list-unstyled d-inline-block">
						<span>
							<li class="text-light mb-3"><i
								class="fa fa-mobile text-white mr-3" style="font-size: 20px;"></i>9552554010,
								9552554057</li>
						</span>
						<span>
							<li class="text-light mb-3"><i
								class="fa fa-envelope text-white"></i>info@nagebabamultistate.com</li>
						</span>
						<span>
							<li class="text-light mb-3"><i class="fa fa-home text-white"></i>&nbsp;&nbsp;&nbsp;
								<p>Nagebaba Multistate, Mauli Sankul Near Zopadi Canteen
									Ahmednagar</p></li>
						</span>
						<h4 class="font-weight-bold text-uppercase mt-5 text-white"
							style="font-family: monospace">IFSC Code:YESB0CMSNOC</h4>

					</ul>
					<br>
					<br>

				</div>
			</div>
</body>

</html>