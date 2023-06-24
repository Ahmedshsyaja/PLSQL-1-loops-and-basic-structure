DECLARE
  NUM1 NUMBER := 1;
  NUM2 NUMBER := 2;
  OPERATOR VARCHAR2(10) := '/';
BEGIN
  CASE OPERATOR
    WHEN '/' THEN
      NUM1 := NUM1 / NUM2;
      DBMS_OUTPUT.PUT_LINE('Result of Num1 and Num2 is ' || NUM1);
    WHEN '*' THEN
      NUM1 := NUM1 * NUM2;
      DBMS_OUTPUT.PUT_LINE('Result of Num1 and Num2 is ' || NUM1);
    WHEN '+' THEN
      NUM1 := NUM1 + NUM2;
      DBMS_OUTPUT.PUT_LINE('Result of Num1 and Num2 is ' || NUM1);
    WHEN '-' THEN
      NUM1 := NUM1 - NUM2;
      DBMS_OUTPUT.PUT_LINE('Result of Num1 and Num2 is ' || NUM1);
    ELSE
      DBMS_OUTPUT.PUT_LINE('Invalid operator.');
  END CASE;
END;
