<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/6/2023
  Time: 8:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Employee</title>
</head>
<body>
<form action="employee" method="post">
    <p>
        <input name="empId" type="text" placeholder="empId">
    </p>
    <p>
        <input name="empName" type="text" placeholder="empName">
    </p>
    <fieldset>
        <legend>Company exist in DB</legend>
        <p>
            <input name="comId" type="text" placeholder="comId">
        </p>
    </fieldset>

    <fieldset>
        <legend>Company not exist in DB</legend>
        <p>
            <input name="comIdNew" type="text" placeholder="comIdNew">
            <input name="comName" type="text" placeholder="comName">
        </p>
    </fieldset>
    <p>
        <input type="text" placeholder="courseId" name="courseId">
    </p>
    <p>
        <input type="submit" value="ADD" name="action">
    </p>
</form>
<form action="employee">
    <input type="submit" name="action" value="SEARCH"/>
</form>
</body>
</html>
