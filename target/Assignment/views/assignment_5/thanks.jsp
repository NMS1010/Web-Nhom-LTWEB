<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/favicon.ico" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="<%=request.getContextPath()%>/assets/styles/styles.css" rel="stylesheet" />
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment5/main.css" type="text/css"/>
</head>

<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">
  <h1>Thanks for joining our email list</h1>

  <p>Here is the information that you entered:</p>

  <label>Email:</label>
  <span>${user5.email}</span><br>
  <label>First Name:</label>
  <span>${user5.firstName}</span><br>
  <label>Last Name:</label>
  <span>${user5.lastName}</span><br>

  <p>This email address was added to our list on ${requestScope.currentDate}</p>

  <p>The first address on our list is ${sessionScope.users5[0].email}<br>
    The second address on our list is ${sessionScope.users5[1].email}
  </p>

  <p>For customer service, contact ${initParam.custServEmail}</p>

  <p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

  <form action="" method="get">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
  </form>
</div>
<jsp:include page= "/views/common/footer.jsp" />

</body>
</html>


