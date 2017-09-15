<jsp:include page="../header/index.jsp"></jsp:include>
	<body>
		<div class="row">
			<div class="col-lg-2">
				<jsp:include page="../navigation/vertical-navigation.jsp"></jsp:include>
			</div>
			<div class="col-lg-10">
				<jsp:include page="../navigation/top-navigation.jsp"></jsp:include>

				<div class="row top-menu-div">
					<div class="col-lg-12">
						<div class="col-lg-12 breadcrumbDiv">
		                    <h2>Navigator Menu Name</h2>
		                    <ol class="breadcrumb">
		                        <li>
		                            <a href="index.html">Home</a>
		                        </li>
		                        <li class="breadcrumb-active">
		                            <strong>Create</strong>
		                        </li>
		                    </ol>
		                </div>
					</div>
				</div>

				<div class="row top-menu-div">
					<div class="col-lg-12 ibox-main-div">
		                <div class="ibox float-e-margins">
		                    <div class="ibox-title">
		                        <h4>New Post</h4>
		                    </div>
		                    <div class="ibox-content">
		                    	<div style="padding: 5px 0px 0px 14px;" ><h5><b>Category</b></h5></div>
		                    	<div class="btn-group category-group" role="group" aria-label="Category Group">
			                    	<button type="button" class="btn btn-w-m btn-success">Technical Post</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Event Post</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Organization Level Post</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Advertising Post</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Biding Post</button>
		                    	</div>
		                    	<div style="padding: 5px 0px 0px 14px;" ><h5><b>Sub Category</b></h5></div>
		                    	<div class="btn-group sub-category-group" role="group" aria-label="Sub Category Group">
			                    	<button type="button" class="btn btn-w-m btn-success">Java</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Dot Net</button>
			                    	<button type="button" class="btn btn-w-m btn-success">JS Frameworks</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Database</button>
			                    	<button type="button" class="btn btn-w-m btn-success">PHP</button>
		                    	</div>
		                    	<div style="padding: 5px 0px 0px 14px;" ><h5><b>Add Tags</b></h5></div>
		                    	<div class="sub-category-group">
									<textarea id="tags" rows="3"></textarea>
		                    	</div>
		                    	<div style="padding: 5px 0px 0px 14px;">
		                    		<div class="col-lg-12">
										<div id="editor">
											<h1>Please add your post here...</h1>
										</div>
		                    		</div>
		                    	</div>
		                    </div>
                		</div>
					</div>
				</div>
				<jsp:include page="../footer/index.jsp"></jsp:include>
			</div>
		</div>
		<script src="js/view/create-post/createPost.js"></script>
	</body>
</html>