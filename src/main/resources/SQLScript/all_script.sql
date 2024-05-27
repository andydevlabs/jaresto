-- Drop the database if it exists and create a new one

\c postgres;

DROP DATABASE IF EXISTS jaresto;

CREATE DATABASE jaresto;

\c jaresto;


-- Create the Unit table

CREATE TABLE Unit (
    unit_id SERIAL PRIMARY KEY,
    unit_name VARCHAR(10) NOT NULL
);


-- Create the Ingredient table

CREATE TABLE Ingredient (
    ingredient_id SERIAL PRIMARY KEY,
    ingredient_name VARCHAR(50) NOT NULL,
    unit_id INT,
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id)
);


-- Create the Menu table

CREATE TABLE Menu (
    menu_id SERIAL PRIMARY KEY,
    menu_name VARCHAR(200) NOT NULL,
    menu_price FLOAT NOT NULL
);


-- Create the Restaurant table

CREATE TABLE Restaurant (
    restaurant_id SERIAL PRIMARY KEY,
    restaurant_location VARCHAR(200) NOT NULL
);


-- Create the IngredientStock table

CREATE TABLE IngredientStock (
    ingredient_stock_id SERIAL PRIMARY KEY,
    ingredient_stock_quantity FLOAT NOT NULL,
    ingredient_stock_datetime TIMESTAMP NOT NULL,
    ingredient_id INT,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);


-- Create the IngredientPriceRecord table

CREATE TABLE IngredientPriceRecord (
    ingredient_price_id SERIAL PRIMARY KEY,
    ingredient_price FLOAT NOT NULL,
    ingredient_price_datetime TIMESTAMP NOT NULL,
    ingredient_id INT,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);


-- Create the associative table for Menu and Ingredient

CREATE TABLE MenuIngredient (
    menu_ingredient_id SERIAL PRIMARY KEY,
    menu_id INT,
    ingredient_id INT,
    ingredient_quantity_needed FLOAT,
    FOREIGN KEY (menu_id) REFERENCES Menu(menu_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);