# Who's turn to do something ?
#
# Megumi who <does something>? - Lets Megumi decide who should do something 
#                      
module.exports = (robot) ->
  robot.respond /(who|qui) (.+)\?/i, (msg) ->
    users = []
    for own key, user of robot.brain.data.users
      users.push "#{user.name}" if "#{user.name}" != robot.name
    msg.send (msg.random users).split(" ")[0] + " " + msg.match[2] + "!"
