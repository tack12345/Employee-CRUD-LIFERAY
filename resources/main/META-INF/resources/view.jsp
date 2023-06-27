<%@ include file="/init.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<liferay-ui:error key="error" message="Sorry, an error prevented saving
your data" />
<liferay-ui:success key="success" message="Data added successfully !"
/>
<liferay-ui:success key="delete" message="Data deleted successfully !"
/>
<liferay-ui:success key="update" message="Job and Department updated successfully !"
/>


<portlet:renderURL var="redirectURL">
<portlet:param name="mvcPath" value="/addEmployee.jsp"></portlet:param>
</portlet:renderURL>
<p>
	
	
	<a href="<%=redirectURL %>"><button type="button" class="btn btn-warning float-right">Add Employee</button></a>
</p>

<h1 style="color:#34568B; background-color:#d3d9e0; font-size: 35px; text-align: center;">All Employee Details</h1>
<div style="margin: 25px 25px 25px 25px;">
<table class="table table-bordered table-hover">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Firstname</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="employee" items="${employeeList}">
  <portlet:actionURL name="deleteAction" var="deleteActionURL">
  <portlet:param name="employeeId" value="${employee.employeeId}"></portlet:param>
  </portlet:actionURL>
  
  <portlet:actionURL name="ReadAction" var="viewURL">
  	<portlet:param name="employeeId" value="${employee.employeeId}"/>
  	<portlet:param name="cmd" value="edit"></portlet:param>
  </portlet:actionURL>
  
  <portlet:actionURL name="updateAction" var="editActionURL">
  <portlet:param name="employeeId" value="${employee.employeeId}"></portlet:param>
  <portlet:param name="cmd" value="edit"></portlet:param>
  </portlet:actionURL>
  
    <tr>
    <td><c:out value='${employee.employeeId}'></c:out></td>
    <td><a href="<%=viewURL%>">${employee.employeeFirstName} </a></td>
    <td><aui:button href="<%=editActionURL%>" value="Update"/></td>
    <td><aui:button onclick="return confirm('Are you sure you want to delete this item?')" href="<%=deleteActionURL%>" value="Delete" /></td>
    </tr>
    
    
    </c:forEach>
  </tbody>
</table> 
</div>