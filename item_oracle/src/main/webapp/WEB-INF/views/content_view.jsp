<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상품 목록</title>
</head>
<body>

<table border="1" width="500">
    <tr>
        <th>상품명</th>
        <th>가격</th>
        <th>설명</th>
    </tr>

    <c:forEach var="dto" items="${list}">
        <tr>
            <td>${dto.name}</td>
            <td>${dto.price}</td>
            <td>${dto.description}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>