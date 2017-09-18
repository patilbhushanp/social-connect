<jsp:include page="../../header/header.jsp"></jsp:include>
	<body>
		<div class="row">
			<div class="col-lg-2">
				<jsp:include page="../../navigation/verticalNavigation.jsp"></jsp:include>
			</div>
			<div class="col-lg-10">
				<jsp:include page="../../navigation/topNavigation.jsp"></jsp:include>

				<div class="row top-menu-div">
					<div class="col-lg-12">
						<div class="col-lg-12 breadcrumbDiv">
		                    <h2>Discussion</h2>
		                    <ol class="breadcrumb">
		                        <li>
		                            <a href="index.html">Home</a>
		                        </li>
		                        <li class="breadcrumb-active">
		                            <strong>Technical</strong>
		                        </li>
		                    </ol>
		                </div>
					</div>
				</div>

				<div class="row top-menu-div">
					<div class="col-lg-12 ibox-main-div">
		                <div class="ibox float-e-margins">
			                <div class="ibox float-e-margins">
			                    <div class="ibox-title">
			                       <h2>What is use of Functional Interface in Java 8?</h2><br/>
			                    </div>
			                    <div class="ibox-content" style="height: auto !important;">
									<div class="container">
									    <div class="page-header">
									        <h1 id="timeline">Stack</h1>
									    </div>
									    <ul class="timeline">
									        <li class="timeline-inverted">
									          <div class="timeline-badge info"><i class="fa fa-question"></i></div>
									          <div class="timeline-panel">
									            <div class="timeline-heading">
									              <h4 class="timeline-title pull-right">Akshya Tambe</h4>
									              <p><small class="text-muted"><i class="fa fa-clock-o"></i> 11 hours ago via Twitter</small></p>
									            </div>
									            <div class="timeline-body">
													<p>finally block is used with try-catch to put the code that you want to get executed always, even if any exception is thrown by the try-catch block.
													finally block is mostly used to release resources created in the try block.</p>
													<p>finalize() is a special method in Object class that we can override in our classes. This method get’s called by garbage collector when the object
													is getting garbage collected. This method is usually overridden to release system resources when object is garbage collected.</p>									            </div>
									          </div>
									        </li>
									        <li class="timeline-inverted">
									          <div class="timeline-badge danger"><i class="fa fa-thumbs-down"></i></div>
									          <div class="timeline-panel">
									            <div class="timeline-heading">
									              <h4 class="timeline-title pull-right">Jack Martin</h4>
									              <p><small class="text-muted"><i class="fa fa-clock-o"></i> 1 day ago</small></p>
									            </div>
									            <div class="timeline-body">
													<p>finally block is used with try-catch to put the code that you want to get executed always, even if any exception is thrown by the try-catch block.
													finally block is mostly used to release resources created in the try block.</p>
													<p>finalize() is a special method in Object class that we can override in our classes. This method get’s called by garbage collector when the object
													is getting garbage collected. This method is usually overridden to release system resources when object is garbage collected.</p>
									            </div>
									          </div>
									        </li>
									        <li class="timeline-inverted">
									          <div class="timeline-badge default"></div>
									          <div class="timeline-panel">
									            <div class="timeline-heading">
									              <h4 class="timeline-title pull-right">Ricky Martin</h4>
									              <p><small class="text-muted"><i class="fa fa-clock-o"></i> 15 hours ago</small></p>
									            </div>
									            <div class="timeline-body">
													<p>finally block is used with try-catch to put the code that you want to get executed always, even if any exception is thrown by the try-catch block.
													finally block is mostly used to release resources created in the try block.</p>
													<p>finalize() is a special method in Object class that we can override in our classes. This method get’s called by garbage collector when the object
													is getting garbage collected. This method is usually overridden to release system resources when object is garbage collected.</p>
									            </div>
									          </div>
									        </li>
									        <li class="timeline-inverted">
									          <div class="timeline-badge success"><i class="fa fa-thumbs-up"></i></div>
									          <div class="timeline-panel">
									            <div class="timeline-heading">
									              <h4 class="timeline-title pull-right">John Simth</h4>
									              <p><small class="text-muted"><i class="fa fa-clock-o"></i> 5 hours ago</small></p>
									            </div>
									            <div class="timeline-body">
													<p>finally block is used with try-catch to put the code that you want to get executed always, even if any exception is thrown by the try-catch block.
													finally block is mostly used to release resources created in the try block.</p>
													<p>finalize() is a special method in Object class that we can override in our classes. This method get’s called by garbage collector when the object
													is getting garbage collected. This method is usually overridden to release system resources when object is garbage collected.</p>
									            </div>
									          </div>
									        </li>
									        <li class="timeline-inverted">
									          <div class="timeline-badge default"><i class=""></i></div>
									          <div class="timeline-panel">
									            <div class="timeline-heading">
									              <h4 class="timeline-title pull-right">Akshya Tambe</h4>
									              <p><small class="text-muted"><i class="fa fa-clock-o"></i> 3 hours ago</small></p>
									            </div>
									            <div class="timeline-body">
									              <p>Thank you so much!!!</p>
									            </div>
									          </div>
									        </li>
									    </ul>
									</div>
		                		</div>
							</div>
						</div>
					</div>
				<jsp:include page="../../footer/footer.jsp"></jsp:include>
			</div>
		</div>
		<script src="js/view/common.js"></script>
		<script src="js/view/postStack/techPost/techPostDetail.js"></script>
	</body>
</html>