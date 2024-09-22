# DB

## Install sqllite
```sh
sudo apt install sqlite3 
```
## Unit test
```
pip install selenium
pip install chromedriver-py
python  tests.py
```
## Web UI Test
```
sudo pip install selenium
```
```
increase = driver.find_element("id", "increase")
decrease = driver.find_element("id", "decrease")
decrease = driver.find_element(By.TAG_NAME,"h1").text	    // from selenium.webdriver.common.by import By
increase.click()
```
## Create DB
```
touch flights.sql
sqlite3 flights.sql
```
```
CREATE TABLE flights(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    origin TEXT NOT NULL,
    destination TEXT NOT NULL,
    duration INTEGER NOT NULL
);
```
```
.tables
```
## Insert
```
INSERT INTO flights (origin, destination,duration) VALUES ("New York","London",415);
INSERT INTO flights (origin, destination, duration) VALUES ("Shanghai", "Paris", 760);
INSERT INTO flights (origin, destination, duration) VALUES ("Istanbul", "Tokyo", 700);
INSERT INTO flights (origin, destination, duration) VALUES ("New York", "Paris", 435);
INSERT INTO flights (origin, destination, duration) VALUES ("Moscow", "Paris", 245);
INSERT INTO flights (origin, destination, duration) VALUES ("Lima", "New York", 455);
```
## Select
```
SELECT * FROM flights;
SELECT origin, destination FROM flights;
SELECT * FROM flights WHERE origin = "New York";
SELECT * FROM flights WHERE duration > 500 OR destination = "Paris";
SELECT * FROM flights WHERE origin IN ("New York", "Lima");
SELECT * FROM flights WHERE origin LIKE "%a%";
```
```
SELECT first, origin, destination
FROM flights JOIN passengers
ON passengers.flight_id = flights.id;
```
```
# Changing the settings to make output more readable
.mode columns
.headers yes
```
## Update
```
UPDATE flights
    SET duration = 430
    WHERE origin = "New York"
    AND destination = "London";
```
## Delete
```
DELETE FROM flights WHERE destination = "Tokyo";
```


