DECLARE
  i NUMBER := 0;
BEGIN
  SELECT COUNT(*) INTO i FROM emp WHERE deptno IN (SELECT deptno FROM dept WHERE deptno = 50);
  IF i < 45 THEN
    DBMS_OUTPUT.PUT_LINE('Space Available as emp count is ' || i);
  END IF;
END;
