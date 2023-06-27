<%@ include file="/init.jsp" %>
<%@page import="cts.employee.model.Employee"%>
<%@page import="cts.employee.service.EmployeeLocalServiceUtil"%>

<%
long employeeId=Long.parseLong(request.getAttribute("employeeId").toString());
Employee emp= EmployeeLocalServiceUtil.getEmployee(employeeId);
%>

<div style="border-style:solid;">
  <div style="text-align:center; background-color:#9999;">
	  		<p>
	  			<h3><label>EmployeeId:</label><c:out value="<%=emp.getEmployeeId()%>"></c:out></h3>
	  		</p>
	  		<p>
	  			<h3><label>Name:</label><c:out value="<%=emp.getEmployeeFirstName()%>"></c:out>
	  			<c:out value="<%=emp.getEmployeeLastName()%>"></c:out></h3>
	  		</p>
	  		<p>
	  			<h3><label>Date of Birth:</label><c:out value="<%=emp.getEmployeeDob()%>"></c:out></h3>
	  		</p>
	  		<p>
	  			<h3><label>Job:</label><c:out value="<%=emp.getEmployeeJob()%>"></c:out></h3>
	  		</p>
			<p>
				<h3><label>Department:</label><c:out value="<%=emp.getEmployeeDepartment()%>"></c:out></h3>
			</p>
			<p>
				<aui:button value=" Back" onClick="javascript: window.history.go(-1)" text-align="right"/>
			</p>
  </div>
</div>