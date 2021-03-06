# hubot-RT-links

[![Build Status](https://travis-ci.org/tobir/hubot-rt-links.svg?branch=master)](https://travis-ci.org/tobir/hubot-rt-links)
[![npm version](https://badge.fury.io/js/hubot-rt-links.svg)](https://badge.fury.io/js/hubot-rt-links)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/tobir/hubot-rt-links)

hubot scipt that recognized request tracker issue numbers and respond with their urls

See [`src/rtlinks.coffee`](src/rtlinks.coffee) for full documentation.

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
* `HUBOT_RT_PREFIX` - comma separated list of prefixes to call (e.g. "RT,rt")
* `HUBOT_RT_INSECURE` - if this is set, urls will be prefixed by 'http' instead  of 'https'.

If you don't set `HUBOT_RT_PREFIX`, any pattern of `rt ####` will be linked

## Sample Interaction

```
user >> rt 1234
hubot>> https://rt.example.com/Ticket/Display.html?id=1234
```

## NPM Module

https://www.npmjs.com/package/hubot-rt-links
