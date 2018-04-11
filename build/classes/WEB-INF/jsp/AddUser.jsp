<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AddUser</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script type="text/javascript">
        function doAjaxPost() {
        var name = $('#name').val();
        var mobile = $('#mobile').val();
        var message =$('#message').val();
        var sendData = {
        	    "name" : name,
        	     "mobile" :mobile,
        	     "message": message
        	   }
        $.ajax({
                   type: "POST",
                   url: 'AddUser',
                   /* dataType : 'json', */
                   data: sendData,
        success: function(response){
   
        $('#info').html(response);
        $('#name').val('');
        $('#mobile').val('');
        $('#message').val('');
        },
        error: function(e){
        console.log(e);
        }
        });
        }
        </script>
</head>
<body>
   <h1>Add Users using Ajax ........</h1>
        <table>
            <tr><td>Enter your name : </td><td> <input type="text" id="name"><br/></td></tr>
            <tr><td>Enter Your Mobile : </td><td> <input type="text" id="mobile"><br/></td></tr>
            <tr><td>Enter Your Message : </td><td> <input type="text" id="message"><br/></td></tr>
            <tr><td colspan="2"><input type="button" value="Add Users" onclick="doAjaxPost()"><br/></td></tr>
            <tr><td colspan="2"><div id="info" style="color: green;"></div></td></tr>
        </table>
        <form action="list" method="get" >
          <input type="submit" value="Show Users">
        </form>
</body>
</html>