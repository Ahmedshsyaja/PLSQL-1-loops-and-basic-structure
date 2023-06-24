DECLARE
  i INTEGER := 0;
  empno NUMBER;
  ename VARCHAR2(50);
  job VARCHAR2(50);
  mgr NUMBER;
  hiredate DATE;
  sal NUMBER;
  comm NUMBER;
  deptno NUMBER;
  emp_row emp%ROWTYPE;
  emp_row_2 emp%ROWTYPE;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Your Data is');
  FOR i IN (SELECT * FROM emp) LOOP
    empno := i.empno;
    ename := i.ename;
    job := i.job;
    mgr := i.mgr;
    hiredate := i.hiredate;
    sal := i.sal;
    comm := i.comm;
    deptno := i.deptno;
    DBMS_OUTPUT.PUT_LINE(empno || ' ' || ename || ' ' || job || ' ' || mgr || ' ' || hiredate || ' ' || sal || ' ' || comm || ' ' || deptno);
  END LOOP;
END;
