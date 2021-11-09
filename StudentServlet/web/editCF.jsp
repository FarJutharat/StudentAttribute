<%-- 
    Document   : editCF
    Created on : Nov 9, 2021, 12:37:21 PM
    Author     : macintoch
--%>

<%@page import="servlet.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Student Page</title>
    </head>
    <%Student std = (Student)session.getAttribute("student"); %>
    <body>
        <h1>Edit Student Page</h1>
        <form name="updateStudent" action="EditStudent">
            ID: <%=std.getId()%>
            </br>
            Name: <input type="text" name="name" value="<%=std.getName()%>" size="40" />
            </br>
            GPA <input type="text" name="gpa" value="" size="10" />
            </br>
            <input type="submit" value="Submit" name="submit" />
            <input type="submit" value="Cancel" name="cancel" />
        </form>
            <br>
        <jsp:include page="show.jsp" flush="true" />
    </body>
</html>
