# Description:
#   URL Shortener for Hubot
#
# Dependencies:
#   goo.gl
#
# Configuration:
#   GOOGLE_API_KEY - The google api key used for Googl.
#
# Commands:
#   hubot shortenurl( me)? <url to shorten>
#
# Author:
#   Eric <ecoan@instructure.com>

googl = require('goo.gl')
googl.setKey(process.env.GOOGLE_API_KEY)

module.exports = (robot) ->
  robot.hear /shortenurl( me)? (.*)/i, (msg) ->
    googl.shorten(msg.match[2]).then((shortUrl) ->
      msg.send 'Here\'s your URL: ' + shortUrl
      return
    ).catch (err) ->
      console.log err
      msg.send 'I ran into an error 😢'
      return
