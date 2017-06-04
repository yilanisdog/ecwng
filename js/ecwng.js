var app=angular.module("ecwng",['ng','ngRoute']);
  app.config(function($routeProvider){
    $routeProvider.when('/start',{
      templateUrl:'tpl/start.html'
    })
    .when('/main',{
        templateUrl:'tpl/main.html',
        controller:'mainCtrl'
      })
    .when("/detail",{
        templateUrl:"tpl/detail.html"
      })
    .when("/detail/:id",{
        templateUrl:"tpl/detail.html",
        controller:'detailCtrl'
      })
    .when("/order",{
        templateUrl:"tpl/order.html"
      })
    .when("/order/:id",{
        templateUrl:"tpl/order.html",
        controller:'orderCtrl'
      })
    .when("/myorder",{
        templateUrl:"tpl/myorder.html",
        controller:'myorderCtrl'
      })
    .otherwise({redirectTo:"/start"})
  });

app.controller("parentCtrl",["$scope","$location",
  function($scope,$location){
    $scope.jump=function(arg){
      $location.path(arg);
    }
}])
app.controller("mainCtrl",["$scope","$http",
  function($scope,$http){
    $scope.hasMore=true;
    $scope.length=0;
    $scope.shuju=[];
    $http.get('data/shuju.json')
    .success(function(data){
        for(var i=0;i<5;i++){
          $scope.shuju.push(data[i]);
          $scope.length++;
        }
      })
    $scope.logMore=function(){
      $http.get("data/shuju.json")
      .success(function(data){
          for(var i=$scope.length;i<data.length;i++){
            if(i>=data.length-1){
              $scope.hasMore=false;
            }
            $scope.shuju.push(data[i]);
          }
        })
    }
    $scope.$watch('kw',function(){
      if($scope.kw){
        $http.get("data/dish_getbykw.php?kw="+$scope.kw)
        .success(function(data){
            $scope.shuju=data;
          })
      }
    })
  }])
app.controller("detailCtrl",["$scope","$http","$routeParams",
function($scope,$http,$routeParams){
  $scope.id=$routeParams.id;
  $scope.shuju=[];
  $http.get("data/shuju.json").success(
    function(data){
      for(var i=0;i<data.length;i++){
        if($scope.id==data[i].did){
          $scope.shuju=data[i];
        }
      }
    })
}])
app.controller("orderCtrl",["$scope","$http","$routeParams","$rootScope",
  function($scope,$http,$routeParams,$rootScope){
    $scope.id=$routeParams.id;
    $scope.order={"did":$scope.id};
    $scope.submitOrder=function(){
      var params=$.param($scope.order);
      $http.get("data/order_add.php?"+params)
        .success(function(data){
          console.log(data);
          var result=data[0];
          if(result.msg=='succ'){
            $rootScope.phone=$scope.order.phone;
            $scope.succMsg = "下单成功，订单编号为:"+result.oid;
          }
          else{
            $scope.errMsg = "下单失败";
          }
        })
    }

  }])
app.controller("myorderCtrl",["$scope","$http","$rootScope",
  function($scope,$http,$rootScope){
    $scope.phone=$rootScope.phone;
    $http.get("data/order_getbyphone.php?phone="+$scope.phone)
      .success(function(data){
        console.log(data);
        $scope.list=data;
      })
  }
] )
