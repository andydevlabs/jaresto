CREATE TABLE MenuIngredient (
    menu_ingredient_id SERIAL PRIMARY KEY,
    ingredient_quantity_needed FLOAT,
    menu_id INT,
    ingredient_id INT,
    FOREIGN KEY (menu_id) REFERENCES Menu(menu_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);