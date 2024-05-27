CREATE TABLE IngredientStock (
    ingredient_stock_id SERIAL PRIMARY KEY,
    ingredient_stock_quantity FLOAT NOT NULL,
    ingredient_stock_datetime TIMESTAMP NOT NULL,
    ingredient_id INT,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);