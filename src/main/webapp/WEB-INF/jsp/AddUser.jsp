<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SMS</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="http://code.angularjs.org/1.2.9/angular.min.js"></script>
  <style>
    .error {
      color: red;
    }
  </style>
  <script>
    var app = angular.module('myApp', []);

    app.controller('mainCtrl', function($scope) {
      $scope.phoneNumbr = /^\+?\d{2}[- ]?\d{10}$/;
    });
  </script>
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
<body ng-app="myApp">
<ng-form name="myForm" ng-controller="mainCtrl">
   <h1>Welcome to SMS Portal</h1>
        <table>
            <tr><td>Enter your name : </td><td> <input type="text" id="name"><br/></td></tr>
            <tr><td>Enter Your Mobile : </td><td> <input type="text" id="mobile" placeholder="+91-1234567890" name="phone" ng-pattern="phoneNumbr" ng-model="phone">
            <span class="error" ng-show="myForm.phone.$error.required">Required!</span>
            <span class="error" ng-show="myForm.phone.$error.minlength">Phone no not less that 10 char.</span>
             <span class="error" ng-show="myForm.phone.$error.maxlength">Phone no not more than 10 char.</span>
             <br><span class="error" ng-show="myForm.phone.$error.pattern">Please match pattern [+XX-XXXXXXXXXX or XX-XXXXXXXXXX]</span>
            </td></tr>
            <tr><td>Enter Your Message : </td><td> <textarea id="message" rows="3" class="form-control" ng-model="inputMessage" maxlength="120"></textarea>
            <p class="text-right">{{ 120 - inputMessage.length + ' Char' }}</p>
            </td></tr>
            <tr><td colspan="2"><input type="button" value="SendSMS" onclick="doAjaxPost()"><br/></td></tr>
            <tr><td colspan="2"><div id="info" style="color: green;"></div></td></tr>
        </table>
        </ng-form>
        <form action="list" method="get" >
          <input type="submit" value="Show Sent">
        </form>
</body>
</html>