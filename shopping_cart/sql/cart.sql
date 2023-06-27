CREATE TABLE carts(
    id SERIAL PRIMARY KEY,
    CUSTOMER_ID INTEGER NOT NULL,
    PRODUCT_ID INTEGER NOT NULL,
    QUANTITY INTEGER NOT NULL DEFAULT 1,
    CREATED_AT TIMESTAMP DEFAULT NOW(),
    UPDATED_AT TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES customer(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
)