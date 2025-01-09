COMMENT ON TABLE person_discounts IS 'Данная таблица хранит данные о персональных скидках посетителей каждой пиццерии';
COMMENT ON COLUMN person_discounts.id IS 'Уникальный идентификационный ключ';
COMMENT ON COLUMN person_discounts.person_id IS 'Вторичный ключ посетителя';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'Вторичный ключ пиццерии';
COMMENT ON COLUMN person_discounts.discount IS 'Процент персональной скидки';