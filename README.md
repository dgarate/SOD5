# README


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

        Admin should log to the following link: http://localhost:3000/admin, with the following credentials: 
            	• User: admin@example.com
            	• Password: password
        * Admin user should create a "default Company” first and then all the required company.
        * OAuth users: Once user Sign_up, the default company should be updated.
        * For all new User: Ability/Role should be updated as required.
        * Mailgun should be update with credentials for production
        * To update welcome email, please go to: app/views/user_mailer/welcome_email.html.erb


* ...
