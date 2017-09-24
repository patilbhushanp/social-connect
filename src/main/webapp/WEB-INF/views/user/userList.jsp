	<jsp:include page="../header/header.jsp"></jsp:include>
	<body>
		<div class="row">
			<div class="col-lg-2">
				<jsp:include page="../navigation/verticalNavigation.jsp"></jsp:include>
			</div>
			<div class="col-lg-10">
				<jsp:include page="../navigation/topNavigation.jsp"></jsp:include>

				<div class="row top-menu-div">
					<div class="col-lg-12">
						<div class="col-lg-12 breadcrumbDiv">
		                    <h2>Team Directory</h2>
		                    <ol class="breadcrumb">
		                        <li>
		                            <a href="index.html">Home</a>
		                        </li>
		                        <li class="breadcrumb-active">
		                            <strong>User List</strong>
		                        </li>
		                    </ol>
		                </div>
					</div>
				</div>

				<div class="row top-menu-div">
					<div class="col-lg-12 ibox-main-div">
		                <div class="ibox float-e-margins">
		                    <div class="ibox-content">
		                    	<table id="userListTable" class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th>Employee Name</th>
											<th>Practice Unit</th>
											<th>Designation</th>
											<th>Work Location</th>
											<th></th>
										</tr>
									</thead>
                                </table>
		                    </div>
                		</div>
					</div>
				</div>
				<jsp:include page="../footer/footer.jsp"></jsp:include>
			</div>
		</div>
		<script src="js/view/common.js"></script>
		<script src="js/view/user/userList.js"></script>
	</body>
</html>