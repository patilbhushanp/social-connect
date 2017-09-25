<jsp:include page="../header/header.jsp"></jsp:include>
	<body>
		<style>
			body {
			    color: #676a6c;
			}
			
			.profile-content {
			    border-top: none !important;
			}
			
			.ibox-content {
			    clear: both;
			}
			
			.ibox-content {
			    background-color: #ffffff;
			    color: inherit;
			    padding: 15px 20px 20px 20px;
			    border-color: #e7eaec;
			    border-image: none;
			    border-style: solid solid none;
			    border-width: 1px 0;
			}
			
			.h4 {
			    margin-top: 5px;
			    font-weight: 600;
			    font-size: 14px;
			}
			
			.h5 {
			    display: inline-block;
			    font-size: 14px;
			    margin: 0 0 7px;
			    padding: 0;
			    text-overflow: ellipsis;
			    float: left;
			}
		</style>
		<div class="row">
			<div class="col-lg-2">
				<jsp:include page="../navigation/verticalNavigation.jsp"></jsp:include>
			</div>
			<div class="col-lg-10">
				<jsp:include page="../navigation/topNavigation.jsp"></jsp:include>

				<div class="row top-menu-div">
					<div class="col-lg-12">
						<div class="col-lg-12 breadcrumbDiv">
		                    <h2>User Profile</h2>
		                    <ol class="breadcrumb">
		                        <li>
		                            <a href="index.html">Home</a>
		                        </li>
		                        <li class="breadcrumb-active">
		                            <strong>Profile</strong>
		                        </li>
		                    </ol>
		                </div>
					</div>
				</div>

				<div class="row top-menu-div">
					<div class="col-lg-12 ibox-main-div">
		                <div class="ibox float-e-margins">
		                    <div class="ibox-content">
		                    	<div class="col-lg-12">
			                    	<div class="col-lg-6">
										<div class="ibox float-e-margins">
											<div class="ibox-title">
												<h5>User Detail</h5>
											</div>
											<div>
												<div class="ibox-content no-padding border-left-right" style="height: auto;">
													<img alt="image" class="img-responsive" src="img/unknown-person.png">
												</div>
												<div class="ibox-content profile-content">
													<h4><strong>Mohan Biradar</strong></h4>
													<p><i class="fa fa-map-marker"></i> Xpanxion International, SS Building, Pune Area</p>
													<h5>
														About me
													</h5>
													<p>
														I have seen many storms in my life. Most storms have caught me by surprise, so I had to learn very quickly to look further and understand that I am not capable of controlling the weather, to exercise the art of patience and to respect the fury of nature.
													</p>
													<div class="row m-t-lg">
														<img alt="image" src="img/my-profile-usage.jpg" />
													</div>
													<div class="user-button">
														<div class="row">
															<div class="col-md-6">
																<button type="button" class="btn btn-primary btn-sm btn-block"><i class="fa fa-envelope"></i> Send Message</button>
															</div>
															<div class="col-md-6">
																<button type="button" class="btn btn-default btn-sm btn-block"><i class="fa fa-coffee"></i> Buy a coffee</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
			                    	<div class="col-lg-6">
										<div class="ibox float-e-margins">
											<div class="ibox-title">
												<h5>Activities</h5>
											</div>
											<div>
												<div class="ibox-content no-padding border-left-right" style="height: auto;">
												&nbsp;
												</div>
												<div class="feed-activity-list">
													<div class="feed-element">
														<a href="#" class="pull-left">
														<img alt="image" class="img-circle" src="img/a1.jpg">
														</a>
														<div class="media-body ">
															<small class="pull-right text-navy">1m ago</small>
															<strong>Mohan Biradar</strong> started following <strong>Vinay Savant</strong>. <br>
															<small class="text-muted">Today 12:21 pm - 09.25.2017</small>
															<div class="actions">
																<a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up" style="color:green;" ></i> Like </a>
																<a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> Love</a>
															</div>
														</div>
													</div>
													<div class="feed-element">
														<a href="#" class="pull-left">
															<img alt="image" class="img-circle" src="img/a3.jpg">
														</a>
														<div class="media-body ">
															<small class="pull-right">5m ago</small>
															<strong>Kartikey Kandpal</strong> posted a new blog. <br>
															<small class="text-muted">Today 12:16 pm - 09.25.2017</small>
														</div>
													</div>
													<div class="feed-element">
														<a href="#" class="pull-left">
															<img alt="image" class="img-circle" src="img/unknown-person-activity.png">
														</a>
														<div class="media-body ">
															<small class="pull-right">2h ago</small>
															<strong>Nilesh Kapale</strong> posted message on <strong>XConnect</strong> site. <br>
															<small class="text-muted">Today 11:20 am - 09.25.2017</small>
															<div class="well">
																I want to buy handmade carft art product. I show case them on Second Floor Janjira Conference room.
																Please visit and buy if you like....
															</div>
															<div class="pull-right">
																<a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up" style="color:green;"></i> Like </a>
																<a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> Love</a>
																<a class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Message</a>
															</div>
														</div>
													</div>
													<div class="feed-element">
														<a href="#" class="pull-left">
															<img alt="image" class="img-circle" src="img/unknown-person-activity.png">
														</a>
														<div class="media-body ">
															<small class="pull-right text-navy">1 day ago</small>
															<strong>Ashish Joshi</strong> started following <strong>Vinay Sawant</strong>. <br>
															<small class="text-muted">Yesterday 1:21 pm - 09.24.2017</small>
															<div class="actions">
																<a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up"></i> Like </a>
																<a class="btn btn-xs btn-white"><i class="fa fa-heart"></i> Love</a>
															</div>
														</div>
													</div>
													<div class="feed-element">
														<a href="#" class="pull-left">
															<img alt="image" class="img-circle" src="img/unknown-person-activity.png">
														</a>
														<div class="media-body ">
															<small class="pull-right">2day ago</small>
															<strong>Ashish Joshi</strong> posted message on <strong>X-Connect</strong> site. <br>
															<small class="text-muted">Saturday 5:20 pm - 09.23.2017</small>
															<div class="well">
																Hi</br>
																is anyone know about Go Green program...? It gives - 25 Ride points on every 50 succesful rides completion!!!
															</div>
															<div class="pull-right">
																<a class="btn btn-xs btn-white"><i class="fa fa-thumbs-up" style="color:green;"></i> Like </a>
															</div>
														</div>
													</div>
													<div class="feed-element">
														<a href="#" class="pull-left">
															<img alt="image" class="img-circle" src="img/unknown-person-activity.png">
														</a>
														<div class="media-body ">
															<small class="pull-right">23h ago</small>
															<strong>Vinay Swant</strong> started following <strong>Aniruddh Tomar</strong>. <br>
															<small class="text-muted">2 days ago at 2:30 am - 09.23.2017</small>
														</div>
													</div>
													<div class="feed-element">
														<a href="#" class="pull-left">
															<img alt="image" class="img-circle" src="img/unknown-person-activity.png">
														</a>
														<div class="media-body ">
															<small class="pull-right">46h ago</small>
															<strong>Kartikey Kandpal</strong> started following <strong>Ashish Joshi</strong>. <br>
															<small class="text-muted">3 days ago at 7:58 pm - 09.22.2017</small>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
			                    </div>
		                    </div>
                		</div>
					</div>
				</div>
				<jsp:include page="../footer/footer.jsp"></jsp:include>
			</div>
		</div>
		<script src="js/view/common.js"></script>
		<script src="js/view/user/userDetail.js"></script>
	</body>
</html>