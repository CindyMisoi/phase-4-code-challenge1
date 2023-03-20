## PHASE-4-CODE-CHALLENGE1


Things you may want to cover:

* Ruby version  - 3.0.0

* System dependencies
checkout the gemfile for dependencies

* Configuration

* Database creation
### creating database
rails new app-name –api –minimal –database=postgresql

--database=postgresql: this flag tells rails to use Postgres database instead of SQLite (which rails uses by default). It adds Postgres gem, gem pg, in your Gemfile.


* Database initialization
### Configuring your database for psql
rails db:create - creates a new database
rails db:migrate - migrations are done using this command and a schema is generated
rails db:seed - this command is used to populate your table with data

### Database associations
![alt text](/pizzas.png)

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
