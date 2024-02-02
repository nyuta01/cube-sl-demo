CREATE TABLE IF NOT EXISTS product_categories(
    id serial PRIMARY KEY,
    name VARCHAR (255) NOT NULL
);

INSERT INTO
    product_categories (id, name)
VALUES
    (1, 'Electronics'),
    (2, 'Books'),
    (3, 'Furniture');
