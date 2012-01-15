# Watch your language!
# (any-swear-word) - See http://www.youtube.com/watch?v=G1zhe85spsw

module.exports = (robot) ->

  words = [
    'arse',
    'ass',
    'bastard',
    'bitch',
    'bugger',
    'bollocks',
    'bullshit',
    'cock',
    'cunt',
    'damn',
    'damnit',
    'dick',
    'douche',
    'fag',
    'fuck',
    'fucked',
    'fucking',
    'piss',
    'shit',
    'wank'
  ]
  regex = new RegExp('(?:^|\\s)(' + words.join('|') + ')(?:\\s|\\.|\\?|!|$)', 'i');

  robot.hear regex, (msg) ->
    msg.send 'You have been fined one credit for a violation of the verbal morality statute.'
