---
  tags: sinatra
  languages: ruby
---

# Rock, Paper, Scissors - Part 2 - Persistence

## Deliverable

Work in your existing repository. Your solution should be delivered in your master branch.

## Instructions

### Get the tests to pass

Create an RPSGameResults model backed by Sequel and get the tests passing.

Use a migration and run it manually.

### Update the Sinatra application

You should move your require statements into your
config/environment.rb file. Your config.ru should like this:

```ruby
  require './config/environment'

  run GameApp
```

Change your application to have 4 routes:

GET /rps_game_result/:id
GET /rps_game_results
POST /rps_game
GET /rps_game

GET /rps_game page should render a form that provides the RPS choices
with a radio button element.

Submitting the form should send POST /rps_game. The POST /rps_game should
store the result of the game in a table called "rps_game_results", which has

* play - the player's play
* computer_play - the computer's play
* won - true if the player won, false if not
* tied - true if their was a tie, false if not
* created_at - approximately when the game results were calculated

Install the Sequel gem to manage your database using Bundler
(that means having a Gemfile!). Use a migration to create your table.

Refactor your existing RpsGame class to be a Sequel::Model that is
backed by the rps_games table.
