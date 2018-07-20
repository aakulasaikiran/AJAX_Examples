<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String namesDictionary[] = { "Anna", "Brittany", "Cinderella", "Diana", "Eva", "Fiona", "Gunda", "Hege",
				"Inga", "Johanna", "kitty", "linda", "Nina", "Ophellia", "Petunia", "Amanda", "Requel", "raja",
				"rani", "sai", "kiran", "akshitha", "nishanth", "Akhil", "roja", "ramesh", "ramulu",

		};

		Thread.sleep(20000);
		String hint = request.getParameter("q");
		String suggestion = "";

		for (String name : namesDictionary) {
			if (name.toUpperCase().startsWith(hint.toUpperCase())) {
				suggestion = suggestion + name + ",";
			}
		}
		if (suggestion.equals(""))
			out.println("no suggestion");
		else
			out.println(suggestion);
	%>





</body>
</html>