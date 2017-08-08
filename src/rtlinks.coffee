# Description:
#   Automatically post request tracker links when issue numbers are seen
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_RT_DOMAIN - domain when your RT instance lives (e.g. "rt.example.com")
#   HUBOT_RT_PREFIX - comma separated list of prefixes to call (e.g. "RT,rt")
#   HUBOT_RT_INSECURE - if this is set urls will be prefixed by "http" instead of "https"
#
# Commands:
#   none
#
# Notes:
#   None
#
# Author:
#   Tobias Ramin <npm@tobir.de>

module.exports = (robot) ->

  if process.env.HUBOT_RT_INSECURE?
    http_proto = 'http://'
  else
    http_proto = 'https://'

  if process.env.HUBOT_RT_PREFIX
    regex = ///
      (?:^|\s) # start of line or space
      (#{process.env.HUBOT_RT_PREFIX.split(',').join('|')}) # list of RT prefixes
      \s # a space
      (\d+) # one or more digits
      \b # word boundary
      ///i # case insensitive
  else
    regex = ///
      (?:^|\s) # start of line or space
      ([rt|RT]) # rt or RT
      \s
      (\d+) # one or more digits
      \b # word boundary
      ///i

  robot.hear regex, (res) ->
    # return if msg.subtype is 'bot_message'
    prefix = res.match[1]
    id = res.match[2]
    url = http_proto + process.env.HUBOT_RT_DOMAIN + '/Ticket/Display.html?id=' + id
    res.send url
