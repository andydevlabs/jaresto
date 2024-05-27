CREATE TABLE IngredientPriceRecord (
    ingredient_price_id SERIAL PRIMARY KEY,
    ingredient_price FLOAT NOT NULL,
    ingredient_price_datetime TIMESTAMP NOT NULL,
    ingredient_id INT,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);
