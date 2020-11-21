<%@page language="java"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<acme:form readonly="true">


	<jstl:forEach var="message" items="${messages}">


		<br />
		<b><acme:print value="${message.title}" /></b>
		<br />

		<b><acme:message code="authenticated.forum.form.label.creationMoment" />: </b>
		<acme:print value="${message.creationMoment}" />
		<br />

		<acme:print value="${message.body}" />

		<br />
		<b><acme:message code="authenticated.forum.form.label.tags" />: </b>
		<acme:print value="${message.tags}" />
		<br />


		<jstl:if test="${isEmptyMessages==true}">
			<b><acme:message code="authenticated.forum.form.label.empty" /></b>

		</jstl:if>



	</jstl:forEach>

	<br />
	<acme:form-return code="authenticated.forum.form.button.return" />
</acme:form>