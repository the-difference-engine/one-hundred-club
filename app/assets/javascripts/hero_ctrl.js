(function() {
  angular.module("app").controller("heroCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/fallen_heroes.json').then(function(response) {
        $scope.fallen_heroes = response.data;
      });
    };
  });
}());