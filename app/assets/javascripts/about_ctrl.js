(function() {
  "use strict";

  angular.module("app").controller("aboutCtrl", function($scope) {

// ABOUT
$scope.showAbout = true;

$scope.aboutButton = function() {
  hideEverything();
  $scope.showAbout = true;
}

// HISTORY
$scope.showHistory = false;

$scope.historyButton = function() {
  hideEverything();
  $scope.showHistory = true;
}

//LEADERSHIP
$scope.showLeadership = false;

$scope.leadershipButton = function() {
  hideEverything();
  $scope.showLeadership = true;
}

// TESTIMONIAL
$scope.showTestimonial = false;

$scope.testimonialButton = function() {
  hideEverything();
  $scope.showTestimonial = true;
}

// FAQ
$scope.showFaq = false;

$scope.faqButton = function() {
  hideEverything();
  $scope.showFaq = true;

}

function hideEverything() {
  $scope.showAbout = false;
  $scope.showHistory = false;
  $scope.showLeadership = false;
  $scope.showTestimonial = false;
  $scope.showFaq = false;
}

$scope.show = 1;







});
})();