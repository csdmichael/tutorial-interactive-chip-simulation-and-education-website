-- Forward-only migration 0002: reference data so a new environment is not empty.
-- Re-runnable: each row is inserted only when its title is absent.
INSERT INTO website (title, reference, status, priority)
SELECT 'Sample Website 1', 'W-0001', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM website WHERE title = 'Sample Website 1');
INSERT INTO website (title, reference, status, priority)
SELECT 'Sample Website 2', 'W-0002', 'in-progress', 'normal'
WHERE NOT EXISTS (SELECT 1 FROM website WHERE title = 'Sample Website 2');
INSERT INTO website (title, reference, status, priority)
SELECT 'Sample Website 3', 'W-0003', 'complete', 'high'
WHERE NOT EXISTS (SELECT 1 FROM website WHERE title = 'Sample Website 3');
INSERT INTO website (title, reference, status, priority)
SELECT 'Sample Website 4', 'W-0004', 'new', 'low'
WHERE NOT EXISTS (SELECT 1 FROM website WHERE title = 'Sample Website 4');
