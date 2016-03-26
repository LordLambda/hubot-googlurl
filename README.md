# hubot-googlurl

A hubot script to shorten urls through googl

See [`src/googl.coffee`](src/googl.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-googlurl --save`

Then add **hubot-googlurl** to your `external-scripts.json`:

```json
["hubot-googlurl"]
```

## Example Interaction

```
user1> @hubot shortenurl https://google.com
hubot> @user1 https://goo.gl/0xP5
```
