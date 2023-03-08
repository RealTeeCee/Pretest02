<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee Details</title>
</head>
<body>
<h1>Employee Details</h1>
<table>
  <tr>
    <td>Employee ID:</td>
    <td>${employee.employeeId}</td>
  </tr>
  <tr>
    <td>Employee Name:</td>
    <td>${employee.employeeName}</td>
  </tr>
  <tr>
    <td>Companies:</td>
    <td>
      <ul>
        <c:forEach items="${employee.companies}" var="company">
          <li>${company.companyName}</li>
        </c:forEach>
      </ul>
    </td>
  </tr>
</table>
</body>
</html>