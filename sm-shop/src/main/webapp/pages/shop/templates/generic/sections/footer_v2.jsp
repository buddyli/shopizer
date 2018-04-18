<%
response.setCharacterEncoding("UTF-8");
response.setHeader("Cache-Control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="/WEB-INF/shopizer-tags.tld" prefix="sm" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

		<!-- .copyright-area-start -->
		<div class="copyright-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 mar_b-30">
						<div class="copyright text-left">
							<p><sm:storeCopy/>&nbsp;-&nbsp;<s:message code="label.generic.providedby" /> <a href="http://www.ibm.com" class="footer-href" target="_blank">IBM</a></p>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<c:if test="${requestScope.CONFIGS['allowPurchaseItems'] == true}">
						<div class="copyright-img text-right">
							<img src="/resources/img/payment/icons/MasterCard.png" width="50" alt="" />&nbsp;<img src="/resources/img/payment/icons/Visa.png" width="50" alt="" />&nbsp;<img src="/resources/img/payment/icons/AmericanExpress.png" width="50" alt="" />&nbsp;<img src="/resources/img/payment/icons/PayPal.png" width="50" alt="" />
						</div>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<!-- .copyright-area-end -->