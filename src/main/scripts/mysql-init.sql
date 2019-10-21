DROP DATABASE IF EXISTS beerinventoryservice;
DROP USER IF EXISTS 'beer_inventory_service'@'localhost';
CREATE DATABASE IF NOT EXISTS beerinventoryservice CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER IF NOT EXISTS 'beer_inventory_service'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT,
    TRIGGER on beerinventoryservice.* TO 'beer_inventory_service'@'localhost';
FLUSH PRIVILEGES;