DECLARE
  i NUMBER := 5;
BEGIN
  IF MOD(i, 2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE(i || ' is even.');
  ELSE
    DBMS_OUTPUT.PUT_LINE(i || ' is odd.');
  END IF;
END;
DECLARE
  i NUMBER := 0;
BEGIN
  IF i > 0 THEN
    DBMS_OUTPUT.PUT_LINE(i || ' is positive.');
  ELSIF i = 0 THEN
    DBMS_OUTPUT.PUT_LINE(i || ' is zero.');
  ELSE
    DBMS_OUTPUT.PUT_LINE(i || ' is negative.');
  END IF;
END;
