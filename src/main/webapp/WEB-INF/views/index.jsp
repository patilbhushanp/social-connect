<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>X-Connect | Social Connect</title>
		<link href="css/bootstrap/bootstrap.min.css" rel="stylesheet">
		<link href="css/font-awesome/font-awesome.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
	 	<link href="css/metismenu/metisMenu.min.css" rel="stylesheet">

	  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  	<script src="js/bootstrap/bootstrap.min.js"></script>
	  	<script src="js/metismenu/metisMenu.min.js"></script>


	</head>
	<body>
		<div class="row">
			<div class="col-lg-2">
				<div class="sidebar-collapse">
                <ul class="nav metismenu" style="background-color: #293846;" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                        	<span>
                            	<img alt="image" class="img-circle" src="img/my-profile.jpg">
                            </span>
							<a data-toggle="dropdown" class="" href="#" aria-expanded="false">
								<span class="clear">
									<span class="block m-t-xs"> <strong class="font-bold">Bhushan P Patil</strong>
									</span>
 									<span class="text-muted text-xs block">Technical Lead - Java <b class="caret"></b>
 									</span>
  								</span>
							</a>
                           	<ul class="dropdown-menu">
                               <li><a href="profile.html">Profile</a></li>
                               <li><a href="contacts.html">Contacts</a></li>
                               <li><a href="mailbox.html">Mailbox</a></li>
                               <li class="divider"></li>
                               <li><a href="login.html">Logout</a></li>
                           	</ul>
                        </div>
                        <div class="logo-element">
                            Server Space, Pune, IND
                        </div>
                    </li>
                    <li class="active">
                        <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">Post Stack</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse in">
                            <li class="active"><a href="index.html">Technical Post</a></li>
                            <li><a href="dashboard_2.html">Event Post</a></li>
                            <li><a href="dashboard_3.html">Organization Post</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">Ad Post</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse main-sub-nav-menu">
                            <li><a href="index.html">Room Buddy</a></li>
                            <li><a href="#">Creative Sale</a></li>
                            <li><a href="#">Donation Activity</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="index.html"><i class="fa fa-th-large"></i> <span class="nav-label">Bid Post</span> <span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level collapse main-sub-nav-menu">
                            <li><a href="index.html">Technical Challenge</a></li>
                            <li><a href="dashboard_2.html">Social Responsibility</a></li>
                            <li><a href="dashboard_3.html">Go Green</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
			</div>
			<div class="col-lg-10">
				<div class="col-lg-12 navbar navbar-static-top top-menu-div" role="navigation" style="margin-bottom: 0">
					<div class="navbar-header">
						<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
							<form role="search" class="navbar-form-custom" action="search_results.html">
								<div class="form-group">
									<input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
								</div>
							</form>
					</div>
					<ul class="nav navbar-top-links navbar-right" style="display: -webkit-box;">
						<li>
							<span class="m-r-sm text-muted welcome-message">&nbsp;</span>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown" href="#">
									<i class="fa fa-usd"></i><span class="label label-success">123</span>
							</a>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
								<i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
							</a>
							<ul class="dropdown-menu dropdown-messages">
								<li>
									<div class="dropdown-messages-box">
										<a href="profile.html" class="pull-left">
											<img alt="image" class="img-circle" src="img/a7.jpg">
										</a>
										<div class="media-body">
											<small class="pull-right">46h ago</small>
											<strong>Mike Loreipsum</strong> started following <strong>Monica Smith</strong>. <br>
											<small class="text-muted">3 days ago at 7:58 pm - 10.06.2014</small>
										</div>
									</div>
									</li>
									<li class="divider"></li>
									<li>
										<div class="dropdown-messages-box">
											<a href="profile.html" class="pull-left">
												<img alt="image" class="img-circle" src="img/a4.jpg">
											</a>
											<div class="media-body ">
												<small class="pull-right text-navy">5h ago</small>
												<strong>Chris Johnatan Overtunk</strong> started following <strong>Monica Smith</strong>. <br>
												<small class="text-muted">Yesterday 1:21 pm - 11.06.2014</small>
											</div>
										</div>
									</li>
									<li class="divider"></li>
									<li>
										<div class="dropdown-messages-box">
											<a href="profile.html" class="pull-left">
												<img alt="image" class="img-circle" src="img/profile.jpg">
											</a>
											<div class="media-body ">
												<small class="pull-right">23h ago</small>
													<strong>Monica Smith</strong> love <strong>Kim Smith</strong>. <br>
												<small class="text-muted">2 days ago at 2:30 am - 11.06.2014</small>
											</div>
										</div>
									</li>
									<li class="divider"></li>
									<li>
										<div class="text-center link-block">
											<a href="mailbox.html">
											<i class="fa fa-envelope"></i> <strong>Read All Messages</strong>
										</a>
									</div>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							<a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
								<i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
							</a>
							<ul class="dropdown-menu dropdown-alerts">
								<li>
									<a href="mailbox.html">
										<div>
											<i class="fa fa-envelope fa-fw"></i> You have 16 messages
											<span class="pull-right text-muted small">4 minutes ago</span>
										</div>
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="profile.html">
										<div>
											<i class="fa fa-twitter fa-fw"></i> 3 New Followers
											<span class="pull-right text-muted small">12 minutes ago</span>
										</div>
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="grid_options.html">
										<div>
											<i class="fa fa-upload fa-fw"></i> Server Rebooted
											<span class="pull-right text-muted small">4 minutes ago</span>
										</div>
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<div class="text-center link-block">
									<a href="notifications.html">
									<strong>See All Alerts</strong>
									<i class="fa fa-angle-right"></i>
									</a>
									</div>
								</li>
							</ul>
						</li>
						<li>
							<a href="login.html">
								<i class="fa fa-sign-out"></i> Log out
							</a>
						</li>
						<li>
							<a class="right-sidebar-toggle">
							<i class="fa fa-tasks"></i>
						</a>
						</li>
					</ul>
				</div>
				<div class="row top-menu-div">
					<div class="col-lg-12">
						<div class="col-lg-12 breadcrumbDiv">
		                    <h2>Technical Stack</h2>
		                    <ol class="breadcrumb">
		                        <li>
		                            <a href="index.html">Home</a>
		                        </li>
		                        <li>
		                            <a>Core Java</a>
		                        </li>
		                        <li class="breadcrumb-active">
		                            <strong>Java 8</strong>
		                        </li>
		                    </ol>
		                </div>
					</div>
				</div>
				<div class="row top-menu-div">
					<div class="col-lg-12 ibox-main-div">
		                <div class="ibox float-e-margins">
		                    <div class="ibox-title">
		                        <h5>Technical post for techies <small class="m-l-sm">learn..share..improve..</small></h5>
		                    </div>
		                    <div class="ibox-content">
								<h2>What is use of Functional Interface in Java 8?</h2><br/>
								<p>I came across new term named "Functional Interface" in Java 8. </p>

								<p>I could found only one use of this interface while working with Lambda expressions. </p>

								<p>Java 8 provides some inbuilt functional interfaces and if we want to define any functional interface then we can make use of @FunctionalInterface annotation. It will allow to declare only single method in the interface.</p>

								<p>for example:</p>

								<pre class="lang-java prettyprint prettyprinted" style=""><code><span class="pln"> </span><span class="lit">@FunctionalInterface</span><span class="pln">
								 </span><span class="kwd">interface</span><span class="pln"> </span><span class="typ">MathOperation</span><span class="pln"> </span><span class="pun">{</span><span class="pln">
								      </span><span class="kwd">int</span><span class="pln"> operation</span><span class="pun">(</span><span class="kwd">int</span><span class="pln"> a</span><span class="pun">,</span><span class="pln"> </span><span class="kwd">int</span><span class="pln"> b</span><span class="pun">);</span><span class="pln">
								 </span><span class="pun">}</span></code></pre>

								<p>How useful it is in Java 8 (other than while working with Lambda expressions)? </p>

								<p>The question <a href="https://stackoverflow.com/questions/33010594/why-do-i-need-a-functional-interface-to-work-with-lambdas">here</a> is different than the one I asked. It is asking why we need Functional Interface while working with Lambda expression. My question is use of Functional interface other than with Lambda expression.</p>
		                    </div>
                		</div>
					</div>
				</div>
				<div class="footer">
					<div class="pull-right">
						10GB of <strong>250GB</strong> Free.
					</div>
					<div>
						<strong>Copyright</strong> Sanbhu Corporation © 2017
					</div>
				</div>
			</div>
		</div>
		<script>
			$(function () {
				$('#side-menu').metisMenu({
					toggle: false
				});
			});
		</script>
	</body>
</html>