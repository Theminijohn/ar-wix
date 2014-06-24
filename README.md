# RSS Feed App - (Ruby on Rails)

## About
A Wix App, RSS Feed, demonstrating how to build a production ready app. Client & Server from scratch using Ruby on Rails server & Wix client side libraries.

##### Click here for <a href="http://editor.wix.com/html/editor/web/renderer/new?siteId=b1b3473c-8124-4de4-a074-0f650b1b3ee4&appDefinitionId=12d96f52-091d-56de-82ec-51cd5b3c7bbd" target="_blank">demo</a> live sample.

### Intro

This is app is built using the same structure and concepts as the <a href="https://github.com/wix/wix-gae-rss-feed-app">RSS Feed on Google App Engine</a> but uses Ruby on Rails as it's backend. The client side (html/js/css) is identical.

This project is set to work on your local dev machine using rails WEBrick server and a local sqlite3 database.

### Overview

This app was developed using the rails scaffolder, so the directory structure is rails classic. We made the following changes:

<pre>
  |-- README.md
  |-- app
  |   |-- controllers
  |   |   `-- app_controller.rb         (New)
  |   |-- models
  |   |   `-- settings.rb               (New)
  |   `-- views
  |       `-- app
  |           |-- settings.html.erb     (New)
  |           `-- widget.html.erb       (New)
  |-- config
  |   |-- application.rb                (wix-apps middleware setup - your app secret goes here)
  |   `-- routes.rb                     (Added routes)
  |-- public                            (All New)
  |   |-- 404.html
  |   |-- 500.html
  |   |-- help.html
  |   |-- error-view.html
  |   |-- invalid-instance.html
  |   |-- css
  |   |-- js
  |   |-- external_modules
  |   `-- wix-ui-lib
  |-- Gemfile                           (Added the wix-apps gem)
</pre>

As all other app samples, the app business logic resides in the client side (Javascript) under the Public folder. The server is responsible for validating that requests are arriving from the Wix platform and to store the app instance settings in a simple key-value store.

### Setup

This app uses the wix-apps middleware to handle authentication, make sure you follow its <a href="https://github.com/wix/wix-apps-ruby">setup</a>