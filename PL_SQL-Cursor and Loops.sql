DECLARE
  MAX_salary emp.sal%TYPE;
  MIN_salary emp.sal%TYPE;
  AVG_salary emp.sal%TYPE;
  i NUMBER := 0;
  salary emp.sal%TYPE;
BEGIN
  SELECT MAX(sal) INTO MAX_salary FROM emp;
  SELECT MIN(SAL) INTO MIN_salary FROM emp;
  DBMS_OUTPUT.PUT_LINE('Employee Max salary: ' || MAX_salary);
  DBMS_OUTPUT.PUT_LINE('Employee Min salary: ' || MIN_salary);
  AVG_salary := (MAX_salary + MIN_salary) / 2;
  DBMS_OUTPUT.PUT_LINE('Employee Average salary: ' || AVG_salary);
  SELECT COUNT(*) INTO i FROM emp;
  DBMS_OUTPUT.PUT_LINE('Number of Employees: ' || i);
  
  FOR i IN (SELECT * FROM emp) LOOP
    IF i.sal > AVG_salary THEN
      UPDATE emp SET sal = (i.sal) + (i.sal * 0.08) WHERE empno = i.empno;
      DBMS_OUTPUT.PUT_LINE('Salary updated for Emp ' || i.empno);
    ELSE
      DBMS_OUTPUT.PUT_LINE('Salary less for Emp ' || i.empno);
    END IF;
  END LOOP;
END;
