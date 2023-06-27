<%@page import="cts.employee.model.Employee"%>
<%@page import="cts.employee.service.EmployeeLocalServiceUtil"%>
<%@ include file="/init.jsp" %>

<%
long employeeId=Long.parseLong(request.getAttribute("employeeId").toString());
Employee employee = EmployeeLocalServiceUtil.getEmployee(employeeId);


%>


<portlet:actionURL name="updateAction" var="updateEmployeeURL">
<portlet:param name="employeeId" value="<%=String.valueOf(employee.getEmployeeId())%>"></portlet:param>
<portlet:param name="cmd" value="update"></portlet:param>
</portlet:actionURL>

<div class="row">
<div class="col-md-12">
<div class="col-md-6">
<aui:form name="employeeForm"  action="<%=updateEmployeeURL%>" method="POST">
<aui:input name="employeeId" label="Id" disabled="true" value="<%=employee.getEmployeeId()%>">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeFirstName" label="FirstName" disabled="true" value="<%=employee.getEmployeeFirstName()%>">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeLastName" label="LastName" disabled="true" value="<%=employee.getEmployeeLastName()%>">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeDob" label="Dob" disabled="true" value="<%=employee.getEmployeeDob()%>">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeJob" label="Job"  value="<%=employee.getEmployeeJob()%>">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeDepartment" label="Department" value="<%=employee.getEmployeeDepartment()%>">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:button type="submit" name="submit"/>
</aui:form>
</div><div class="col-md-6"></div>
</div>
</div>