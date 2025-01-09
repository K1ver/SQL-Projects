UPDATE menu
SET price = price - (price / 100 * 10)
WHERE pizza_name = 'greek pizza'