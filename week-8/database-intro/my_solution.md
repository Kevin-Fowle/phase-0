SELECT * FROM states;

SELECT * FROM regions;

SELECT state_name,population FROM states;

SELECT state_name,population FROM states ORDER BY population DESC;

SELECT state_name FROM states WHERE region_id=7;

SELECT state_name,population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;

SELECT state_name FROM states WHERE population BETWEEN 1000000 and 1500000;

SELECT state_name, region_id FROM states ORDER BY region_id ASC;

SELECT region_name FROM regions WHERE region_name LIKE '%Central';

SELECT region_name, state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY region_id ASC;

Reflection:

Databases are for storing/accessing/editing mass amounts of information. After working with SQL for a day, it really changes the way I view data storage. I was a little intimidated at first, but working with SQL is actually really nice. You can show, or sort, different pieces of vital information with relative ease.

one-to-many relationships can be defined as to how multiple tables share pieces of similar information. In my clothing schema, the person can relate to what clothes they have picked out for them, but also what size shoes they wear.. or what size waist they have.

A primary key will identify an object in the table. A Foreign key is a field in the table that is primary key in another table. The foreign key will take the value that is the primary key and use it as its primary value.

The SELECT statement will allow you to grab a piece of data from a particular set. You could use SELECT * FROM states and all of the data in the states database will be visible. The WHERE statement will allow you to use comparison operators to filter your data results. The Code Academy example comes to mind. They had an IMDB movie review table. If you only wanted movies with above a 9 rating, you would use the WHERE statement.