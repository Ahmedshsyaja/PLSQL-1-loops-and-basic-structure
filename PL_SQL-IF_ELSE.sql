DECLARE
  v_salary emp.sal%TYPE;
  v_incentive NUMBER(8,2);
BEGIN
  SELECT sal INTO v_salary FROM emp WHERE empno = 110;
  
  IF v_salary > 5000 THEN
    v_incentive := v_salary * 0.1;
  ELSE
    v_incentive := v_salary * 0.05;
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('Employee 110 salary: ' || v_salary);
  DBMS_OUTPUT.PUT_LINE('Employee 110 incentive: ' || v_incentive);
END;
