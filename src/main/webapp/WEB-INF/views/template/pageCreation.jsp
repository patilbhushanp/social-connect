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
		                    <h2>Navigator Menu Name</h2>
		                    <ol class="breadcrumb">
		                        <li>
		                            <a href="index.html">Home</a>
		                        </li>
		                        <li>
		                            <a>Breadcrumb 1</a>
		                        </li>
		                        <li class="breadcrumb-active">
		                            <strong>Breadcrumb 2</strong>
		                        </li>
		                    </ol>
		                </div>
					</div>
				</div>

				<div class="row top-menu-div">
					<div class="col-lg-12 ibox-main-div">
		                <div class="ibox float-e-margins">
		                    <div class="ibox-title">
		                        <h5>Page Purpose <small class="m-l-sm">one liner information</small></h5>
		                    </div>
		                    <div class="ibox-content">
		                    	page body should be here
		                    </div>
                		</div>
					</div>
				</div>
				<jsp:include page="../footer/footer.jsp"></jsp:include>
			</div>
		</div>
		<script src="js/view/common.js"></script>
		<script src="js/view/welcome-page.js"></script>
	</body>
</html>