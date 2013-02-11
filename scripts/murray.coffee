# Description:
#   Murray Awesome
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Approve - Display an approving Bill Murray
#
# Author:
#   obichris1138

murrays = [
  "http://thezooom.com/wp-content/uploads/2012/06/Bill-Murray-Youre-Awesome-460x577.jpg",
  "http://crepesandasmile.files.wordpress.com/2013/01/20130116-141827.jpg",
  "http://24.media.tumblr.com/tumblr_me2zwjRrwO1qfkdlbo1_400.jpg"
]

module.exports = (robot) ->
  robot.hear /.*(awesome|murray).*/i, (msg) ->
    msg.send msg.random murrays