angular.module('ionicMaps', [
  'ionic'
  'ionicMaps.controllers'
]).config([
  '$stateProvider'
  '$urlRouterProvider'
  ($stateProvider, $urlRouterProvider) ->
    console.log "Test for sourcemaps."

    $stateProvider.state 'map',
      url: '/map'
      views:
        map:
          templateUrl: 'templates/gmap.html'
          controller: 'MapCtrl'

    $stateProvider.state 'help',
      url: '/help'
      views:
        help:
          templateUrl: 'templates/help.html'

    $urlRouterProvider.otherwise('map')
    return
])