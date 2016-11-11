(function() {
  angular.module("app").controller("heroCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/heroes.json').then(function(response) {
        $scope.heroes = response.data;
      });
    };
  });
}());