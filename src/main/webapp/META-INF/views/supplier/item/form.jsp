<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form readonly="true">
	
	<acme:form-textbox code="supplier.item.form.label.ticker" path="ticker"/>
	<acme:form-textbox code="supplier.item.form.label.title" path="title"/>
	<acme:form-textbox code="supplier.item.form.label.itemCategory" path="itemCategory"/>
	<acme:form-moment code="supplier.item.form.label.creationMoment" path="creationMoment"/>
	<acme:form-textarea code="supplier.item.form.label.descriptionText" path="descriptionText"/>
	<acme:form-money code="supplier.item.form.label.price" path="price"/>
	<acme:form-textbox code="supplier.item.form.label.additionalInformation" path="additionalInformation"/>
	<acme:form-textbox code="supplier.item.form.label.photo" path="photo"/>
	
	
	
	<acme:form-return code="supplier.item.form.button.return"/>
</acme:form>
