## Community Group Project
  This is a basic platform that provides the access to the community of different groups that any user can join and start its conversations with the group memebers. This platform contains all of the core functionalities of any application of this level and scope. There are a groups directory that lists all groups. Users need to logged in to the system before using any functionality. A single user can join multiple groups and can only create posts on groups they're a member of. Other memeber can join the conversation by commenting on the posts. 

 * Member can edit/delete their own posts & comments. Ther create of the group (admin) can have some additional functionalites i.e.,           
    - Edit/delete any post/comments on the group.
    - Remove members that currently have access to the group

Below is some rails specifc versions and instructions to run the project

### Ruby version <br />
 * The Ruby Version that is used in the development of this project is **v2.7.2** <br />
 * The Rails Version that is used in the development of this project is **v7.0.2** <br />

### Gem installed <br />
 * gem 'pg' -> A gem that is used to use postgresql in Rails Application <br />
 * gem 'figaro' -> A gem used for managing the environment Variables <br />
 * gem 'devise' -> A state-of-the-art rails gem for user authentication in rails <br />
 * gem 'devise-tailwinded' -> A helper gem that create the views of devise having templates created using tailwindcss <br />
 * gem 'pundit' -> A gem that helps the developer to add authentication in the application using policy <br />
 * gem 'view_component' -> A more advanced technique than partials. It helps to divide our application to multiple components for better concerns and reuseablility. <br />
 * gem 'rubocop' -> A gem that is helpful, and give suggestion to make our code as good and readable as possible in rails <br />

### Set Up Rails app <br />
 * Before running or installing the application on your system, make sure that you have installed all the important dependecies i.e., Ruby, Rails or bundler.<br />
 * Simply go to the root directory of the application and run the **bundle** command to install all the gem dependencies of the rails application. [ You can find all the gems (that are used in the application) in **GemFile** ] <br />
 * Use this command to run all the migration file. This will basically create the database, load the schema, and initialize it with the seed data. <br />
 >'bundle exec rake db:setup',
 * To give or check the **important credentials** such as for admin, for cloudinary (a cloud storage for image storage), Mailer username/passwords, you can create the enviroment variables in environment.rb file or can either use the **figaro gem** to create and access the environemnt variable using build-in ruby-on-rails hash 'ENV' (that will be created in application.yml file) <br /><br />

### Start the Application <br />

 * To start the Rails application, you can use the following command to run it.
  >bundle exec rails server<br />
 * You can find your app now by pointing you browser to https://localhost:3000. If everything worked, you can then start signing up or using the application.<br />
