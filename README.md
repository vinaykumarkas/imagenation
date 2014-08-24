##Description
The Flickr API has a method which allows you to search photos. Create a
Ruby on Rails web application that allows users to search for, and view,
Flickr photos.

##Installation
Clone the project to the local directory
execute "Bundle install"

##Running
execute "rails s" to start the server
visit "localhost:3000" to view the application home page

Alternatively you can visit http://radiant-sierra-3399.herokuapp.com/ which is Heroku link for this application

<<<<<<< HEAD
##Notes
Please update the API Key for Flickr with your own API Key

##Testing
=======
#Testing
>>>>>>> enhancements-001
Various test cases can be ececuted from the spec directory:

execute "rspec spec/controllers/search_controller_spec.rb" for controller test cases
execute "rspec spec/models/flickr_spec.rb" for model test cases
execute "rspec spec/helpers/search_helper_spec.rb" for helper test cases

#Notes
Please update the API Key for Flickr with your own API Key

##To Do
- Add Authentication for the website
- Remove Flickr API KEY from code and make it as ENV Variable
<<<<<<< HEAD
- Add additional test cases
=======
- Add additional test cases
- Add more repository search functanolities

>>>>>>> enhancements-001