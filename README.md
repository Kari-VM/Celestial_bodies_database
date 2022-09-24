# Celestial-Database-SQL
PostgreSQL Database of Celestial Bodies.

This database was created as part of freeCodeCamp's Relational Database Certification.
It contains 5 tables named galaxy, star, planet, moon and constellations and also demonstrates the relationship between these tables.

### Description:

The 'galaxy' table has data containing the names of 6 galaxies, their types with a brief description and size in million light years.

The 'star' table has the names of 6 stars in the Milky Way galaxy, their age in million years, distance from earth in light years and also establishes a 'many to one' relationship between each of the stars and the Milky Way galaxy from the galaxy table.

The 'planet' table contains the names of 13 planets along with their age in billion years, whether they have life or not, whether they have rings or not, planet types and number of moons.  Also, there is a 'many to one' relationship between each of these planets and the Sun from the star table.

The 'moon' table contains the names of 20 Jupiter moons, their discoverers and the years they were discovered in. Each of these moons has a 'many to one' relationship with the planet Jupiter from planet table.

The 'constellations' table has the names of 6 constellations having a 'one to one' relationship with each of the galaxies from the galaxy table.

### Learning Experience:

Through this project I learnt how to do the following:

- CREATE A DATABASE and connect to it

- CREATE A TABLE with different datatypes such as INT, VARCHAR, TEXT, NUMERIC and BOOLEAN 

- Set NOT NULL and UNIQUE constraints

- Set a SERIAL PRIMARY KEY and FOREIGN KEY

- Reference two tables using a FOREIGN KEY

- Insert VALUES into the columns of the table

- UPDATE table values using the WHERE condition

- SELECT ALL COLUMNS from a table by setting a column in order

- Get all data from tables joined by a FOREIGN KEY using the SELECT ALL COLUMNS FROM and FULL JOIN command.
