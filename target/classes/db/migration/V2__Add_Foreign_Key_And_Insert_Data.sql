

-- Заполнение таблицы product (20 продуктов)
DO $$
    BEGIN
        FOR i IN 1..20 LOOP
                INSERT INTO product (name, description, active, start_date)
                VALUES
                    ('Product ' || i, 'Description for Product ' || i, (i % 2 = 0), CURRENT_DATE + (i * INTERVAL '1 day'));
            END LOOP;
    END $$;
-- Заполнение таблицы sku (50 SKU)
DO $$
    BEGIN
        FOR i IN 1..50 LOOP
                INSERT INTO sku (sku_code, description, price, product_id) VALUES
                    ('SKU' || LPAD(i::text, 3, '0'), 'Description for SKU ' || i, ROUND((50 + RANDOM() * 150)::numeric, 2), (i % 20) + 1);
            END LOOP;
    END $$;