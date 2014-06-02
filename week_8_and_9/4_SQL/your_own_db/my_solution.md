<!-- ## Show the terminal output here.  -->
Creating the table values in SQLite:

sqlite> CREATE TABLE users (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> first_name VARCHAR(64) NOT NULL,
   ...> last_name VARCHAR(64) NOT NULL,
   ...> email VARCHAR(64) NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL
   ...> );

sqlite> CREATE TABLE pictures (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,user_id INTEGER NOT NULL,
   ...> filepath VARCHAR(64) NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL,
   ...> foreign key(user_id) REFERENCES users(id)
   ...> );

sqlite> CREATE TABLE potholes (
	 ...> id INTEGER PRIMARY KEY AUTOINCREMENT, 
	 ...> location VARCHAR (64) NOT NULL,
	 ...> fixed BIT DEFAULT FALSE, 
	 ...> picture_id INTEGER NOT NULL,
	 ...> created_at DATETIME NOT NULL,
	 ...> updated_at DATETIME NOT NULL,
	 ...> foreign key (picture_id) REFERENCES pictures(id)
	 ...> );

Typing .schema reveals
    CREATE TABLE users (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name VARCHAR(64) NOT NULL,
last_name VARCHAR(64) NOT NULL,
email VARCHAR(64) NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL
);
CREATE TABLE pictures (
id INTEGER PRIMARY KEY AUTOINCREMENT,user_id INTEGER NOT NULL,
filepath VARCHAR(64) NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL,
foreign key(user_id) REFERENCES users(id)
);
CREATE TABLE potholes (
id INTEGER PRIMARY KEY AUTOINCREMENT,
location VARCHAR (64) NOT NULL,
fixed BIT DEFAULT FALSE,
picture_id INTEGER NOT NULL,
created_at DATETIME NOT NULL,
updated_at DATETIME NOT NULL,
foreign key (picture_id) REFERENCES pictures(id)
);

sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ("Brendan", "Susens-Jackson", "bsusens-jackson@gmail.com", DATETIME('now'), DATETIME('now'));

Inserting the Picture Info:

sqlite> INSERT INTO pictures (user_id, filepath, created_at, updated_at)
   ...> VALUES
   ...> (3, "random_path", DATETIME('now'), DATETIME('now'));

Inserting The Pothole Info:

sqlite> INSERT INTO potholes (location, picture_id, created_at, updated_at)
   ...> VALUES
   ...> ("116 and 3rd", 1, DATETIME('now'), DATETIME('now'));
sqlite> INSERT INTO potholes (location, picture_id, created_at, updated_at)
   ...> VALUES
   ...> ("65N 442E", 3, DATETIME('now'), DATETIME('now'));
