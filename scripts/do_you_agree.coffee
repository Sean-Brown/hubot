# Description:
#	Listen for "do you agree?" or "don't you agree?" and sends back a random response
#
# Commands:
#	hubot do/don't you agree? - replies with a random response
#
# Notes:
# 	Case-insensitive Do/do Don't/don't, requires a question mark at the end
#
# Author:
#	Sean-Brown

module.exports = (robot) ->
	responses = ['not really', 'no', 'ya um no', 'ask me tomorrow', 'can\'t you see I\'m busy!?']
	robot.respond /[dD]o(n't)? you agree\?/, (res) ->
		res.send res.random responses

