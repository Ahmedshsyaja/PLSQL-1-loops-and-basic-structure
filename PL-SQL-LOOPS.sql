DECLARE
  i NUMBER := 3;
  j NUMBER := 0;
  P NUMBER := 1;
  K NUMBER := 1;
BEGIN
  P := i;
  DBMS_OUTPUT.PUT_LINE('Factorial of ' || i || ' is ');
  
  FOR j IN 1 .. i LOOP
    K := P * K;
    P := P - 1;
  END LOOP;
  
  DBMS_OUTPUT.PUT_LINE(K);
END;
