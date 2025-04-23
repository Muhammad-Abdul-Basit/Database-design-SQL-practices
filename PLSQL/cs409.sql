-- An arithmetic series is given below.
--{3, 8, 13, 18,……….}
-- Find the sum of first 10 elements of the given series.
Declare
Sn NUMBER; --Sum of the first n terms.
a1 NUMBER:=3; --First term of the series.
n NUMBER; --Number of terms to sum.
d NUMBER:=5; --Common difference between consecutive terms (like d=a2-a1).
BEGIN
n:=&n;
Sn:=(n/2)*(2*a1+(n-1)*d);
DBMS_OUTPUT.PUT_LINE('Sum of first '|| n || 'terms is : ' || Sn);
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE('An error occurd' || SQLERRM);
END;
/