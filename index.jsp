<!-- index.jsp -->
<!-- !1qwQqww12 -->

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
    <script>
		function validateForm() {
            var username = document.getElementById("username").value;
            var usernamePattern = /^[a-zA-Z0-9]{4,}$/; // At least 4 alphanumeric characters

            if (!usernamePattern.test(username)) {
                alert("Username must contain at least 4 alphanumeric characters.");
                return false;
			}
			
			var password = document.getElementById("password").value;
            var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$/;
            
            if (!passwordPattern.test(password)) {
                alert("Your password is not valid. It must be at least 6 characters long, containing at least one uppercase letter, one lowercase letter, one digit, and one special character.");
                return false;
            }
            return true;
        }
			
    </script>
</head>
<body>
    <h1>User Details</h1>
    <form method="post" action="validate.jsp" onsubmit="return validateForm();">
        Enter Username: <input type="text" name="username" id="username"><br/><br/>
        Enter Password: <input type="password" id="password" name="pass" 
						>
						<br/>
        <input type="submit" value="SUBMIT">
    </form>
</body>
</html>
