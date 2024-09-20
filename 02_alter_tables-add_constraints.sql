# You can edit the various fields of each table using the 'ALTER TABLE' command
# More information here https://www.mysqltutorial.net/mysql-alter-table/

# HOWEVER,
# you will get an error when trying to modify a primary key
# that is referenced in another table as a foreign key,
# in this case, directly trying to modify the id field in the parts table will error
# because it is used in the purchase_details table as a foreign key

# As a temporary solution, I have disabled the check by adding the
# 'SET FOREIGN_KEY_CHECKS = 0' command before beginning then re-enabling it after.
# Ideally you would like to have added all necessary constraints to the PRIMARY KEY/FOREIGN KEY fields
# when creating the table

SET FOREIGN_KEY_CHECKS = 0;

ALTER TABLE parts
    MODIFY id int AUTO_INCREMENT NOT NULL,
    MODIFY name VARCHAR(100) NOT NULL,
    MODIFY category_id INT NOT NULL,
    MODIFY manufacturer_id INT NOT NULL,
    MODIFY stock INT NOT NULL,
    MODIFY price DECIMAL NOT NULL
;

ALTER TABLE categories
    MODIFY id int AUTO_INCREMENT NOT NULL,
    MODIFY name VARCHAR(100) NOT NULL
;

ALTER TABLE manufacturers
    MODIFY id INT AUTO_INCREMENT NOT NULL,
    MODIFY name VARCHAR(100) NOT NULL,
    MODIFY warranty_period INT NOT NULL
;

ALTER TABLE purchases
    MODIFY id INT AUTO_INCREMENT NOT NULL,
    MODIFY customer_name VARCHAR(100) NOT NULL,
    MODIFY date DATE NOT NULL
;

ALTER TABLE purchase_details
    MODIFY purchase_id INT NOT NULL,
    MODIFY part_id INT NOT NULL,
    MODIFY quantity INT NOT NULL
;

SET FOREIGN_KEY_CHECKS = 1;