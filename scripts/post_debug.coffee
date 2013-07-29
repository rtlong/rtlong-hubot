# Description
#   <description of the scripts functionality>
#
# Dependencies:
#   "<module name>": "<module version>"
#
# Configuration:
#   LIST_OF_ENV_VARS_TO_SET
#
# Commands:
#   hubot <trigger> - <what the respond trigger does>
#   <trigger> - <what the hear trigger does>
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   <github username of the original script author>
#
#


module.exports = (robot) ->
  robot.router.post '/hubot/post_debug', (req, res) ->
    data = req.body
    if user = robot.brain.data.users[data.user]
      robot.send({user: user}, data.message)
      res.send 'Sent'
    else
      console.log('Unknown recipient for POST:', req.body)
      res.send 'Unknown recipient'
