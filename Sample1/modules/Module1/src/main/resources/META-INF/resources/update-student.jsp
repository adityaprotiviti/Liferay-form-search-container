<%@ include file="init.jsp"%>
<portlet:defineObjects/>

<portlet:actionURL name="updateStudent" var="updateStudentActionURL"/>

<aui:form action="<%=updateStudentActionURL%>" name="studentForm" method="POST"/>

<%
	String firstName = renderRequest.getParameter("firstName");
	String lastName = renderRequest.getParameter("lastName");
	Integer Age = renderRequest.getParameter("age");
	
	
%>
<aui:form action="<%= updateStudentActionURL %>" method="post" >
	<aui:input name="firstName" type="text" value="${student.firstName}"/>
	<aui:input name="lastName" type="text" value="${student.lastName}" />
	<aui:input name="Age" type="int" value="${student.age}" />
	<aui:input type="submit" value="Update" name="update"></aui:input>
</aui:form>
