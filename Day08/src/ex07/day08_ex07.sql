-- Session #1

BEGIN TRANSACTION;

UPDATE pizzeria SET rating = 2 WHERE id = 1;

UPDATE pizzeria SET rating = 4 WHERE id = 2;

COMMIT;

-- Session #2

BEGIN TRANSACTION;

UPDATE pizzeria SET rating = 1 WHERE id = 2;

UPDATE pizzeria SET rating = 5 WHERE id = 1;

COMMIT;