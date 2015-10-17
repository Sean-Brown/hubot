# Description:
#	Listen for "do you agree?" or "don't you agree?" and sends back a random response
#
# Author:
#	Sean-Brown

module.exports = (robot) ->
	responses = ['not really', 'no', 'ya um no', 'ask me tomorrow', 'can\'t you see I\'m busy!?']
	robot.respond /[dD]o(n't)? you agree\?/, (res) ->
		res.send res.random responses

