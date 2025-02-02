<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="">
    Tên: <input name="ten"/>
    <button type="submit">Search</button>
</form>
<br/>
<button><a href="/sinh-vien/view-add">Add Student</a></button>
<table>
    <tr>
        <th>STT</th>
        <th>MSSV</th>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Địa chỉ</th>
        <th>Giới tính</th>
        <th colspan="2">Action</th>
    </tr>
    </thead>
    <tbody>
    <%--    for(Doi tuong: ten mang)--%>
    <c:forEach items="${abc}" var="sv" varStatus="i">
        <tr>
            <td>${i.index}</td>
            <td>${sv.mssv}</td>
            <td>${sv.ten}</td>
            <td>${sv.tuoi}</td>
            <td>${sv.gioiTinh}</td>
            <td>${sv.diaChi}</td>
            <td>
                <a href="/sinh-vien/remove?viTri=${i.index}">Delete</a>
                <a href="/sinh-vien/detail?viTri=${i.index}">Detail</a>
                <a href="/sinh-vien/view-update?viTri=${i.index}">Update</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
