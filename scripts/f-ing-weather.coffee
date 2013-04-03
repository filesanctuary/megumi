# Description:
#   Returns the weather from thefuckingweather.com
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   megumi what's the weather for <city> - Get the weather for a location
#   megumi what's the weather for <zip> - Get the weather for a zipcode
#
# Author:
#   aaronott

weather = (msg, query, cb) ->
  msg.http('http://thefuckingweather.com/')
    .query(where: query)
    .header('User-Agent', 'Mozilla/5.0')
    .get() (err, res, body) ->
      temp = body.match(/<span class="temperature" tempf="\d*">(\d+)/)?[1] || ""
      remark = body.match(/<p class="remark">(.*)</)?[1] || "remark not found"
      flavor = body.match(/<p class="flavor">(.*)</)?[1] || "flavor not found"
      cb(temp, remark, flavor)

module.exports = (robot) ->
  robot.respond /(what's|what is) the weather for (.*)/i, (msg) ->
    weather msg, msg.match[2], (temp, remark, flavor) ->
      out = (5/9)*(temp-32) + " degrees " + remark + " " + flavor
      msg.send out
