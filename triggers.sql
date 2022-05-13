-- 1
CREATE OR REPLACE TRIGGER new_employee
AFTER
  INSERT ON employee
FOR EACH ROW 
BEGIN
  INSERT INTO seniority VALUES (new.emple_id, 0);
END;
/
-- 2
CREATE OR REPLACE TRIGGER old_employee
AFTER
  DELETE ON employee
FOR EACH ROW
BEGIN
  DELETE FROM seniority WHERE emple.id = :old.emple_id;
END;
/ 
-- 3
CREATE OR REPLACE TRIGGER update_employee
BEFORE
UPDATE ON seniority
FOR EACH ROW
DECLARE 
  distance INTEGER;
BEGIN
 distance := :new.amounr_years - :old.amount_years;
  IF distance = 1 THEN
    UPDATE employee
    SET salary = salary + 50
    WHERE emple_id = :old.emple_id;
  END IF;
END;
/
-- 4
