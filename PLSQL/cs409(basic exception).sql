DECLARE
x NUMBER;
y NUMBER;
z NUMBER;
BEGIN
x:=&x;
y:=&y;
z:=x+y;
DBMS_OUTPUT.PUT_LINE('Sum of '|| x || ' + ' || y || ' is : '|| z);
EXCEPTION
WHEN VALUE_ERROR THEN
DBMS_OUTPUT.PUT_LINE('Please write an integer for addition');
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('AN unexpected error occured');
END;
/