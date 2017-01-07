var app = angular.module("myApp", ["ngRoute", "myCtrl"]);

app.config(function ($routeProvider) {
  $routeProvider
    .when("/start", {
      templateUrl: "view/start.html"
    })
  $routeProvider
    .when("/", {
      templateUrl: "view/start.html"
    })
    .when("/interview", {
      templateUrl: "view/interview.html",
      controller: "interviewCtrl"
    })
    //.otherwise({
    //  redirectTo: "/start"
    //})
});

$(function(){
  var element = $(".panel-body");
  var temp =  element.text().replace(/\n/g,'<br/>');
  element.html(temp);
});
