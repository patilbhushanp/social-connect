<jsp:include page="../header/header.jsp"></jsp:include>
	<body>
			<div class="col-lg-2">
				<jsp:include page="../navigation/verticalNavigation.jsp"></jsp:include>
			</div>
			<div class="col-lg-10">
				<jsp:include page="../navigation/topNavigation.jsp"></jsp:include>

				<div class="row top-menu-div">
					<div class="col-lg-12">
						<div class="col-lg-12 breadcrumbDiv">
		                    <h2>Create</h2>
		                    <ol class="breadcrumb">
		                        <li>
		                            <a href="index.html">Home</a>
		                        </li>
		                        <li class="breadcrumb-active">
		                            <strong>New Post</strong>
		                        </li>
		                    </ol>
		                </div>
					</div>
				</div>

				<div class="row top-menu-div">
					<div class="col-lg-12 ibox-main-div">
		                <div class="ibox float-e-margins">
		                    <div class="ibox-content">
		                    	<div style="padding: 5px 0px 0px 14px;" ><h5><b>Post Type</b></h5></div>
		                    	<div class="post-type-group">
			                    	<button type="button" class="btn btn-w-m btn-success">Post Stack</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Organizational</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Advertise</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Social</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Go Green</button>
		                    	</div>
		                    	<div style="padding: 5px 0px 0px 14px;" ><h5><b>Category</b></h5></div>
		                    	<div class="category-group">
			                    	<button type="button" class="btn btn-w-m btn-success">Technical Post</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Bidding Challenge</button>
		                    	</div>
		                    	<div style="padding: 5px 0px 0px 14px;" ><h5><b>Sub Category</b></h5></div>
		                    	<div class="sub-category-group">
			                    	<button type="button" class="btn btn-w-m btn-success">Java</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Dot Net</button>
			                    	<button type="button" class="btn btn-w-m btn-success">JS Frameworks</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Database</button>
			                    	<button type="button" class="btn btn-w-m btn-success">PHP</button>
		                    	</div>
		                    	<div style="padding: 5px 0px 0px 14px;" ><h5><b>Add Tags</b></h5></div>
		                    	<div class="sub-category-group">
									<textarea id="tags" style="width:400px;" rows="3"></textarea>
		                    	</div>
		                    	<div style="padding: 5px 0px 0px 14px;" ><h5><b>Accessibility Level</b></h5></div>
		                    	<div class="accessibility-group">
			                    	<button type="button" class="btn btn-w-m btn-success">Organization</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Department</button>
			                    	<button type="button" class="btn btn-w-m btn-success">Custom</button><br/><br/>
			                    	<textarea id="accessibilityTags" style="width:300px;" rows="2"></textarea><br/>
		                    	</div>
		                    	<div style="padding: 5px 0px 0px 14px;">
		                    		<div class="col-lg-12" style="padding: initial;">
										<div id="editor">
											<h1>Please add your post here...</h1>
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
		<script src="js/view/createPost/createPost.js"></script>
	</body>
</html>