-- Create the sales table
CREATE TABLE sales (
    product TEXT,
    quantity INTEGER,
    price REAL
);

-- Insert sample data
INSERT INTO sales (product, quantity, price) VALUES ('Pen', 10, 5);
INSERT INTO sales (product, quantity, price) VALUES ('Pencil', 20, 2);
INSERT INTO sales (product, quantity, price) VALUES ('Eraser', 15, 3);
INSERT INTO sales (product, quantity, price) VALUES ('Pen', 5, 5);
INSERT INTO sales (product, quantity, price) VALUES ('Pencil', 10, 2);
INSERT INTO sales (product, quantity, price) VALUES ('Eraser', 5, 3);
