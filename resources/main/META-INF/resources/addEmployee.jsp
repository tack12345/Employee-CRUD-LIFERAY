<%@ include file="/init.jsp" %>
<portlet:actionURL name="addEmployee" var="addEmployeeURL" />

<div class="row">
<div class="col-md-12">
<div class="col-md-6">
<aui:form name="employeeForm"  action="<%=addEmployeeURL%>" method="POST">
<aui:input name="employeeFirstName" label="FirstName">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeLastName" label="LastName">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeDob" type ="date" label="Dob">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeJob" label="Job">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:input name="employeeDepartment" label="Department">
<aui:validator name="required"></aui:validator>
</aui:input>
<aui:button type="submit" name="submit"/>
</aui:form>
</div><div class="col-md-6"></div>
</div>
</div>

