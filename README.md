# Helper Community - Ruby on Rails with React on Rails

Finial project for Lighthouse Labs - Full-stack Web Development Bootcamp 

<a href="https://navy-ex.herokuapp.com"><img width="1440" alt="screen shot 2017-04-03 at 11 20 04 pm" src="https://cloud.githubusercontent.com/assets/16886114/24643894/57913746-18c5-11e7-8278-a39586ca719f.png"></a>

## Project Description - https://navy-ex.herokuapp.com

My original idea for this two-weeks project, was to build something similar to an Uber app that can take any request with live chat functionality. (Such as moving furniture from point A to B etc...) As a team, we decided to make this app to focus more on the info shareing like Craigslist with user frendly rating system as Facebook. This "Helper Community" is a place to find drivers, handy men, volunteers, etc... where you can see the locations of the requests on the google map.

### Two ways you can experience this app

1. Click this link - https://navy-ex.herokuapp.com
2. Clone this repo and run localhost: 3000. (Please follow instruction below)

### Localhost: 3000 - Instructions

1. Create a directory in Mac Terminal or Windows Command Prompt and name it as you wish.
2. Enter: git clone git@github.com:MichaelMini/helperCommunity.git
3. Enter: cd helperCommunity
4. Enter: bin/rake db:migrate
5. Enter: bin/rake db:seed
6. Enter: yarn dev
7. In your browser, Enter: http://localhost:3000/

### Web App - Instructions

- Non user can view all posts in the Google Map.
- Only user with an account can post request events.
- Each request event has it's own chat room for users to chat for more detials for the request.
- Each user can leave ratings and reviews on other users to keep our community safer.

### The Stack for this project:

* Ruby 2.3.0

* react_on_rails

* sass-rails

* Database Postgresql

* jquery-rails

* bulma-rails

* Geocoder

* Paperclip

* twilio-ruby

