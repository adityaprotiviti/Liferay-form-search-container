
<%@page import="Module1s.service.StudentLocalServiceUtil"%>
<%@page import="javax.portlet.PortletURL" %>
<%@ include file="/init.jsp" %>
<%@taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>

<%
PortletURL studentItrUrl = renderResponse.createRenderURL();
studentItrUrl.setParameter("mvcPath", "/showDetails.jsp");
studentItrUrl.setParameter("orderByCol", "createDate");
studentItrUrl.setParameter("orderByType", "desc");
%>

<liferay-ui:search-container total="<%=StudentLocalServiceUtil.getStudentsCount()%>" emptyResultsMessage="No students found" delta="5" deltaConfigurable="true" iteratorURL="<%= studentItrUrl %>">
<liferay-ui:search-container-results results="<%= StudentLocalServiceUtil.getStudents(searchContainer.getStart(), searchContainer.getEnd()) %>" />
<liferay-ui:search-container-row className="Module1s.model.Student" modelVar="student" keyProperty="studentId">
<liferay-ui:search-container-column-text property="firstName" name="First Name"/>
<liferay-ui:search-container-column-text property="lastName" name="Last Name"/>
<liferay-ui:search-container-column-text property="age" name="Age"/>

</liferay-ui:search-container-row>
<liferay-ui:search-iterator paginate="<%=true%>" markupView="lexicon" searchContainer="<%=searchContainer%>"></liferay-ui:search-iterator>
</liferay-ui:search-container>