# README

Project in Trello: https://trello.com/b/flYKA8IA/administradorsegregacionfunciones#
The configured domain for this application is: www.sod5.tk
The relational model is on the project mail folder, file name: Relational Model.jpg

* Ruby version:

ruby 2.6.6p146 (2020-03-31 revision 67876) [x64-mingw32]

* System dependencies

    Please refer to Gem File

* Configuration

* Database creation:
    This application is working under a postgresql database
    To create the database run the following comand: rails db:create db:migrate db:seed

* Database initialization

* How to run the test suite:

    Connect to development enviroment and run the seeds, comand: rails db:seed

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
       

        Load your app into Heroku
        Once done, enter your application console on heroku with the following command:$ heroku run rails console)
        Create the admin on admin_user table:
            AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
        Create the admin on user table:
            User.create!(name: 'admi', email: 'admin@example.com', password: 'password', password_confirmation: 'password')
        Users Maintenance:
        * OAuth users: Once user Sign_up, the default company should be updated.
        * For all new User: Ability/Role should be updated as required.
        * Mailgun should be update with credentials for production
        * To update welcome email, please go to: app/views/user_mailer/welcome_email.html.erb

        


* ...
