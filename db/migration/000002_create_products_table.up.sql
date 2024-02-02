CREATE TABLE IF NOT EXISTS products(
    id serial PRIMARY KEY,
    name VARCHAR (255) NOT NULL,
    product_category_id INT NOT NULL,
    FOREIGN KEY (product_category_id) REFERENCES product_categories(id)
);

INSERT INTO
    products (id, name, product_category_id)
VALUES
    (1, 'Apple AirTag', 1),
    (2, 'Amazon Fire TV Stick', 1),
    (3, 'Apple AirPods', 1),
    (4, 'House of Flame and Shadow', 2),
    (5, 'The Women: A Novel', 2),
    (6, 'Iris Ohyama CX-3 Color Box', 3),
    (7, 'Amazon Basic 3-Tier Steel Rack', 3),
    (8, 'Aoviho', 3),
    (9, 'IKSTAR Memory Foam Cushion', 3);
