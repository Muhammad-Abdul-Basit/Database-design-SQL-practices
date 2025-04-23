
DECLARE 
factorial NUMBER:=1;
num NUMBER:=1;
factorial_number NUMBER;
BEGIN
factorial_number:=&factorial_number;
FOR num IN 1.. factorial_number LOOP
factorial:=factorial*num;
END LOOP;
DBMS_OUTPUT.put_line(factorial);
END;
/
