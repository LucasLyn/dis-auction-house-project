# The project
The UIS_prototype project is a website running in Python using the Flask library. It was developed using the 'bank' project as a base, and now acts as a prototype auction house for an unnamed game, allowing players to check their active auctions, highest current bid, and all bids on their active auctions.
The schema of the database is a modification of 'employee' and their 'investment accounts' to be 'player' and 'auctions' respectively.

The ER-diagram for our project can be found in the root of the project folder with the name 'er-diagram.png'.


## The functionality
The current website adds a user 'Shadow Wizard', with the player_id '9000', and the password 'UIS'. Use these credentials to login.
Once the user is logged in, the auction information can be seen by visiting 'Auctions' at the top right of the site.

There the user can see 3 tables with information regarding their auctions.
First table is a list of all auctions listed with their id attached.
Second table displays the current highest bid on each auction.
Third and last table shows all bids made on an auction from other users.

Currently, there are a few missing features;
1. The 'bank' folder is not renamed to something proper (messes with the already established modules).
2. The rest of the site isn't utilized.
3. The 'cd_account' number in the database has the dublicate constraint, which we are unsure of how to remove.
4. The last column in the first table is currently empty. It should display the id of the currently highest bidder of each respective auction, but we could not get it to display. We have modified the 'vw_invest_accounts.sql' file so it should display the correct result, which is sadly doesn't. 


## Requirements:
The required modules to run the project can be found in the requirements.txt file.
To install all the required modules, run the command below in a command line;

>$ pip install -r requirements.txt


## Database initialization
To initialize the database to use with the project, follow the steps below;

1. Set the database in __init__.py file by modifying line 17 (default is user and databse 'postgres').
2. Run schema.sql, schema_ins.sql, schema_upd.sql and schema_upd_2.sql in the database.

To import the given files in postgres, use the following command in psql (postgres command-line);

>$ \i file_name.sql

Running the command with the file 'run_all_sql_files.sql' automatically runs the above command on all necessary files.


## Running flask
### The python way
To run the project with Python, run either of the following commands;

>$ python3 run.py

>$ py run.py


### The flask way.
NOTE: Instructions for running the project the Flask way (regular and virtual) has been kept from the original readme. We did NOT use this, and thus we recommend using it with Python.

>$ export FLASK_APP=run.py

>$ export FLASK_DEBUG=1           (Replaces export FLASK_ENV=development)

>$ export FLASK_RUN_PORT=5004     (Optional if you want to change port numbe4. Default port is port 5000.)

>$ flask run


For Windows you may have to use the SET command instead of EXPORT. Ex set FLASK_APP=run.py; set FLASK_DEBUG=1; flask run. Also remeber to add the path to your postgres bin-directory in order to run (SQL interpreter) and other postgres programs in any shell.


### The flask way with a virual environment.

Set up virtual environment as specified in https://flask.palletsprojects.com/en/1.1.x/installation/ (OSX/WINDOWS)

OSX:

Create virtual environment in folder

>$ mkdir myproject

>$ cd myproject

>$ python3 -m venv .venv

Activate virtual environment in folder

>$ . .venv/bin/activate

Install flask

>$ pip install Flask



Set environment variables and start flask

>$ export FLASK_APP=run.py

>$ export FLASK_DEBUG=1           (Replaces export FLASK_ENV=development)

>$ export FLASK_RUN_PORT=5000     (Optional if you want to change port number. Default port is port 5000.)

>$ flask run
