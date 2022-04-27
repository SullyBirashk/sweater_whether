## About The Project

 Have you ever wanted to plan a roadtrip, checkout nearby businesses and restaurants, and check the weather of your destination? Well If you have, you know it could be a hassle using multiple apps going back and forth to check for all that info. Introducing Sweater Weather, the all new application that when given a start location and a destination, you can track the distance, the travel time, and the weather with just one call! If you wanted to see nearby restaurants, you could give the app a keyword and it will show you results related to your keyword. Enjoy this one stop shop to all your needs without swiping through multiple apps!

Here's why:
* Your time should be focused on other things than stressing about a RoadTrip. This app solves that problem and helps make planning trips easier. 
* You shouldn't be doing the same tasks to find all the important info you need. 


## Getting Started

Here is how you can get setup

### Installation

_Below is an example of how you can instruct your audience on installing and setting up your app. This template doesn't rely on any external dependencies or services._

1. Clone the repo
   ```sh
   git clone git@github.com:SullyBirashk/sweater_whether.git
   ```
2. Install Gems
   ```sh
   Bundle Install
   ```
3. Create the Data Base
   ```js
   rails db:{create, migrate, seed}
   ```
 4. Run the server 
   ``` rails s ```

## Usage

Here are some example calls you can make for using this application!

- First, you probably want to create an account, so you would have to runb the following in Postman
   post ``` http://localhost:3000/api/v1/users ``` and in the body, make sure you have JSON selected and paste you info like so
    ``` {
  "email": "whatever4@example.com",
  "password": "password",
  "password_confirmation": "password"}
  ```
- This will provide you with an API Key as well!

- Once you create an account, start making your calls like so
- ``` http://localhost:3000/api/v1/road_trip ```
- In the JSON Body write information as so 
- ``` {
  "origin": "Denver,CO",
  "destination": "Riverside, CA",
  "api_key": "jgn983hy48thw9begh98h4539h4"} 
  ```
- Once you do that, enjoy the detailed response with anything you need on it!


## Contact

Sully Birask LinkedIn - [@sully_birashk](https://www.linkedin.com/in/sully-birashk-a33a15228/)

Project Link: [https://github.com/SullyBirashk/sweater_whether](https://github.com/SullyBirashk/sweater_whether)

<p align="right">(<a href="#top">back to top</a>)</p>
