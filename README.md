# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 

* System dependencies

* Configuration

* Database creation

* Database initialization



* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

### Using render.com to deploy your code challenge:
1. Ensure your .ruby-version file is blank
2. In your application directory, run the command: rails secret
3. Copy the generated key and cd into your config folder
4. Create a secrets.yml file here and add the key like this:
 production:
 	secret_key_base: <your secret key >
 	
5. Push these changes to your main branch
6. Change the code challenge repository visibility from private to public
7. Authorize render to your gitub when signing in
8. Go to dashboard and select web service
9. Select the code challenge repository
10. Enter a name for your web service
11. Change the build command to: bundle install
12. Change the start command to:rails db:migrate;rails db:seed;rails server;
13. At the bottom of the page go to advanced
14. Click on add environment variable
15. For the key: SECRET_KEY_BASE
16. For the value paste the value you added to your secrets.yml file in /config
17. After this click on Create web service at the bottom of the page and your app should deploy

* ...
