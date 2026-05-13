<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
</head>
<body>

<form action="/write" method="post">

    <table>
        <tr>
            <td>상품명</td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>

        <tr>
            <td>가격</td>
            <td>
                <input type="text" name="price">
            </td>
        </tr>

        <tr>
            <td>설명</td>
            <td>
                <input type="text" name="description">
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <input type="submit" value="전송">
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>

</form>

</body>
</html>