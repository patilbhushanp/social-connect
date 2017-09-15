<jsp:include page="header/index.jsp"></jsp:include>
	<body>
		<div class="row">
			<div class="col-lg-2">
				<jsp:include page="navigation/vertical-navigation.jsp"></jsp:include>
			</div>
			<div class="col-lg-10">
				<jsp:include page="navigation/top-navigation.jsp"></jsp:include>

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
				<jsp:include page="footer/index.jsp"></jsp:include>
			</div>
		</div>
		<script src="js/view/welcome-page.js"></script>
	</body>
</html>