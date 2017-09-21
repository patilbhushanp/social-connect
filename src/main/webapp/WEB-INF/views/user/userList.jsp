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
		                    	<table class="footable table table-stripped toggle-arrow-tiny">
	                                <thead>
		                                <tr>	
		                                    <th data-toggle="true">Project</th>
		                                    <th>Name</th>
		                                    <th>Phone</th>
		                                    <th data-hide="all">Company</th>
		                                    <th data-hide="all">Completed</th>
		                                    <th data-hide="all">Task</th>
		                                    <th data-hide="all">Date</th>
		                                    <th>Action</th>
		                                </tr>
	                                </thead>
	                                <tbody>
		                                <tr>
		                                    <td>Project - This is example of project</td>
		                                    <td>Patrick Smith</td>
		                                    <td>0800 051213</td>
		                                    <td>Inceptos Hymenaeos Ltd</td>
		                                    <td><span class="pie">0.52/1.561</span></td>
		                                    <td>20%</td>
		                                    <td>Jul 14, 2013</td>
		                                    <td><a href="#"><i class="fa fa-check text-navy"></i></a></td>
		                                </tr>
	                                </tbody>
                                </table>
		                    </div>
                		</div>
					</div>
				</div>
				<jsp:include page="../footer/footer.jsp"></jsp:include>
			</div>
		</div>
		<script src="js/view/common.js"></script>
		<script src="js/footable/footable.min.js"></script>
		<script src="js/view/user/userList.js"></script>
	</body>
</html>