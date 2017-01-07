angular.module("myCtrl", ["ngRoute"])
  .controller("interviewCtrl", function ($scope, $http) {
    $http.get(URL_INTERVIEW).success(function (data) {
      console.log(data);
      $scope.interviewList = data;
    })
  })
;