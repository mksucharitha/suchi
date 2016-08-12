<!DOCTYPE html>
<html=ng-app="myApp">
<style>
table, th , td  {
  border: 1px solid grey;
  border-collapse: collapse;
  padding: 5px;
}
table tr:nth-child(odd) {
  background-color: #f1f1f1;
}
table tr:nth-child(even) {
  background-color: #ffffff;
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<body>

<div  ng-controller="Categorycontroller"> 

<table>
  <tr ng-repeat="x in listcategory">
    <td>{{ x.id }}</td>
    <td>{{ x.name }}</td>
    <td>{{ x.description }}</td>
  </tr>
</table>

</div>

<script>
var myapp = angular.module('myApp', []);
myapp.controller('Categorycontroller', function($scope, $http) {
    $http.get("categoryList",categoryd.list())
    .then(function (response) {$scope.listcategory = response.data.records;});
});
</script>

</body>
</html>