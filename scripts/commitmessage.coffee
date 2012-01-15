# Get a random commit message
#
# Megumi commit message - Displays a random commit message

module.exports = (robot) ->
  robot.respond /commit message/i, (msg) ->
    msg.http("http://whatthecommit.com/index.txt")
       .get() (err, res, body) ->
         msg.reply body
