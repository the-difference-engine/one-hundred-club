(function() {
  "use strict";

  angular.module("app").controller("aboutCtrl", function($scope) {
  	$scope.showAbout = true;
  
  	$scope.testFunction = function() {
  		console.log("hello");
  		if ($scope.showAbout = true) {
  			
  		}
  		$scope.showAbout = false;
  	}



// $scope.toggleAboutVisible = function(about){
// 			about.volumeVisible = !about.volumeVisible
// 		};



  });
})();