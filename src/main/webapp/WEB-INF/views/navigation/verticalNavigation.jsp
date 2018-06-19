<%@ page import="java.util.*,
org.springframework.security.core.context.SecurityContextHolder,
org.springframework.security.core.userdetails.UserDetails,
org.springframework.security.core.GrantedAuthority,
org.springframework.security.core.authority.SimpleGrantedAuthority" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	final UserDetails userDetails = (UserDetails)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	final Collection<? extends GrantedAuthority> grantedAuthorityList = userDetails.getAuthorities();
	final List<String> userRoles = new ArrayList<String>();
	for (final GrantedAuthority grantedAuthority : grantedAuthorityList) {
		userRoles.add(grantedAuthority.getAuthority());
	}
%>				
				<div class="sidebar-collapse">
	                <ul class="nav metismenu" style="background-color: #293846;" id="side-menu">
	                    <li class="nav-header">
	                        <div class="dropdown profile-element">
	                        	<span>
	                            	<img alt="image" class="img-circle" src="../img/my-profile.jpg">
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
	                               <li><a href="myProfile.xconnect">Profile</a></li>
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
	                        <a href="../post/createPost.xconnect"><i class="fa fa-file"></i> <span class="nav-label">Create New Post</span></a>
	                    </li>
	                    <%
	                    	for (final String role : userRoles) {
	                    		if ("ROLE_POST".equalsIgnoreCase(role)) {
	                    %>
				                    <li>
				                        <a href="#"><i class="fa fa-list"></i> <span class="nav-label">Post Stack</span> <span class="fa arrow"></span></a>
				                        <ul class="nav nav-second-level collapse  main-sub-nav-menu">
				                            <li class="active"><a href="../post/techPostList.xconnect">Technical Post</a></li>
				                            <li><a href="#">Bidding Challenge</a></li>
				                        </ul>
				                    </li>	                    			
	                    <%		} else if ("ROLE_ORGANIZATION".equalsIgnoreCase(role)) { %>
									<li>
				                        <a href="#"><i class="fa fa-building-o"></i> <span class="nav-label">Organization Post</span> <span class="fa arrow"></span></a>
				                        <ul class="nav nav-second-level collapse main-sub-nav-menu">
				                        	<li><a href="#">Event Post</a></li>
				                        	<li><a href="#">Announcement Post</a></li>
				                        </ul>
				                    </li>	                    
	                    <%		} else if ("ROLE_ADVERTISEMENT".equalsIgnoreCase(role)) { %>
			                    	<li>
			                        	<a href="#"><i class="fa fa-sticky-note"></i> <span class="nav-label">Advertise Post</span> <span class="fa arrow"></span></a>
			                        	<ul class="nav nav-second-level collapse main-sub-nav-menu">
			                            	<li><a href="#">Room Buddy</a></li>
			                            	<li><a href="#">Creative Sale</a></li>
			                        	</ul>
			                    	</li>	                    
	                    <%		} else if ("ROLE_SOCIAL".equalsIgnoreCase(role)) { %>
				                    <li>
				                        <a href="#"><i class="fa fa-chrome"></i> <span class="nav-label">Social Responsibility</span> <span class="fa arrow"></span></a>
				                        <ul class="nav nav-second-level collapse main-sub-nav-menu">
				                            <li><a href="userList.xconnect">Team Directory</a></li>
				                            <li><a href="#">Donation Activity</a></li>
				                        </ul>
				                    </li>	                    
	                    <%		} else if ("ROLE_GOGREEN".equalsIgnoreCase(role)) { %>
				                    <li>
				                        <a href="goGreenConcept.xconnect"><i class="fa fa-globe"></i> <span class="nav-label">Go Green</span></a>
				                    </li>
	                    <%		}
	                    	}
	                    %>
	                </ul>
            	</div>