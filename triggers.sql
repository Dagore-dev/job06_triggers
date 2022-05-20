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
CREATE OR REPLACE TRIGGER update_item
  AFTER INSERT ON sales
  FOR EACH ROW
BEGIN
  UPDATE item
    SET stock = stock - :new.units
    WHERE item_id = :new.item_id;
END;
/
-- 5
CREATE OR REPLACE TRIGGER delete_item
  BEFORE DELETE ON item
  FOR EACH ROW
BEGIN
  INSERT INTO record_history VALUES(:old.id, :old.name, USER, SYSDATE);
END;
/
-- 6
CREATE OR REPLACE TRIGGER after_delete
  AFTER DELETE ON t1
  FOR EACH ROW
BEGIN
  INSERT INTO audit_t1 VALUES (NULL, :old.id, :old.column1, :old.column2);
END;
/
