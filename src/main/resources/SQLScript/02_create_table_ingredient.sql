CREATE TABLE Ingredient (
    ingredient_id SERIAL PRIMARY KEY,
    ingredient_name VARCHAR(50) NOT NULL,
    unit_id INT,
    FOREIGN KEY (unit_id) REFERENCES Unit(unit_id)
);