(function() {
  "use strict";

  angular.module("app").controller("newsCtrl", function($scope) {

// The Siren
$scope.showSiren = true;

$scope.sirenButton = function() {
  hideEverything();
  $scope.showSiren = true;
}

// Media Coverage
$scope.showMediaCoverage = false;

$scope.mediaButton = function() {
  hideEverything();
  $scope.showMediaCoverage = true;
}

function hideEverything() {
  $scope.showSiren = false;
  $scope.showMediaCoverage = false;
}


});
})();