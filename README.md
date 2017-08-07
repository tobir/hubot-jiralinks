# hubot-RT-links

[![Build Status](https://travis-ci.org/bdashrad/hubot-jiralinks.svg?branch=master)](https://travis-ci.org/bdashrad/hubot-jiralinks)
[![npm version](https://badge.fury.io/js/hubot-jira-links.svg)](https://badge.fury.io/js/hubot-jira-links)

hubot scipt that recognized request tracker issue numbers and respond with their urls

See [`src/jiralinks.coffee`](src/jiralinks.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-rt-links --save`

Then add **hubot-rt-links** to your `external-scripts.json`:

```json
["hubot-rt-links"]
```

## Configuration
### Required:
* `HUBOT_RT_DOMAIN` - domain when your RT instance lives (e.g. "rt.example.com")
### Optional:
* `HUBOT_RT_PREFIX` - comma separated list of project prefixes (e.g. "RT,rt")
* `HUBOT_RT_INSECURE` - if this is set, urls will be prefixed by 'http' instead  of 'https'.

If you don't set `HUBOT_RT_PREFIX`, any pattern of [rR][tT] #### will be linked

## Sample Interaction

```
user >> rt 1234
hubot>> https://rt.example.com/Ticket/Display.html?id=-1234
```

## NPM Module

https://www.npmjs.com/package/hubot-jira-links
