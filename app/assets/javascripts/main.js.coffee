app = angular.module('blog', ["ngResource"])

@IndexCtrl = ($scope, $resource) ->
	Entry = $resource("entries/:id" , {id: "@id"} , {update: {method: "PUT"}})
	$scope.entries = Entry.query()

	$scope.add = ->
		console.log Entry 
		addentry = Entry.save($scope.newentries)

		$scope.entries.push(addentry)
		$scope.newentries = {}