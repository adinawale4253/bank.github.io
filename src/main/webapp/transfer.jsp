<jsp:include page="header.html"></jsp:include>

          <%
       if(request.getAttribute("transfer")!=null)
{
	out.println("<html><h2><center>"+request.getAttribute("transfer")+"</center></h2></html>");
}
       
        %>

<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sant Nagebaba Multistate</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<style>
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
		<div class="container-fluid mb-3">
			<div>
				<form action="transfer1.jsp"  name="F1" method="post">
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
						<dt>Transfer Account Number</dt>
						<dd>
							<input type="number" name="taccno" id="taccno" placeholder="Enter Transfer Account Number">
						</dd>
						<dt>Transfer Amount</dt>
						<dd>
							<input type="number" name="tamount" id="tamount" placeholder="Enter Transfer Amount">
						</dd>
						
						
						<button class="btn btn-primary" type="submit">Transfer Now</button>
					</dl>

				</form>

			</div>
		</div>



</body>

</html>
<jsp:include page="footer.html"></jsp:include>