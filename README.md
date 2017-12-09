# Refactor of went-to-bali-mwahaha

## Description

_This is a refactoring of an e-commerce website, forked from [epicodus-lessons/went-to-bali-mwahaha](https://github.com/epicodus-lessons/went-to-bali-mwahaha). previous developer, went to Bali :)_

## Installation and Setup

To install on your own machine, follow the instructions below:

* Clone this repository.
* To Initialize this project run the following commands
* Run the following commands in the project root directory:
  ```
  bundle install
  rake db:create
  rake db:migrate
  rails db:seed
  rails s
  ```
* Open ```localhost:3000``` in your web browser to view site

### Gems ###



### Running Tests

* Before running tests, be sure to run ```rails db:test:prepare```
* Testing AJAX functionality requires PhantomJS. You can install with Homebrew using ```brew install phantomjs```, or find instructions for installing it [here](https://github.com/teampoltergeist/poltergeist#installing-phantomjs).
* To run all tests, run ```rspec``` in the project root.
* To skip running AJAX tests, run ```rspec . --tag '~js'```.


### Refactoring

* Users can add items to their shopping cart from the index page with AJAX.
* Users can show and hide product details with AJAX.
* Users can remove items from their shopping cart with AJAX.
* Order items cannot have a quantity less than 1.
* Site displays a flash message when user signs up, signs in, and signs out.
* Ensure that users can't order a negative number of items.
* Admins can update and delete products in addition to creating them.
* Site displays flash messages when adding, updating and deleting products.
* An image can be added to a product using Paperclip.
* Product price can be entered as a decimal amount (ex: 19.99).
* Product validates that:
  * Product name, description, price exist.
  * Product price is greater than 0.
* Product index uses flexbox instead of Materialize grid to format rows.
* Remove "decimal" column from orders table and change total_price to a decimal instead of a string.
* Add testing, including integration tests for AJAX functionality.
* Updates to styling to improve the aesthetics of the site.

## Support and contact details

_Please contact [luciano101@msn.com](mailto:luciano101@msn.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Rails
* Materialize
* AJAX

### License

Copyright (c) 2017 **Luciano Oliveira**

*This software is licensed under the MIT license.*
