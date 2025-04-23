DECLARE
v_emp_name emp_name.e_name%TYPE;
v_emp_sal emp_sal.e_sal%TYPE;
BEGIN
SELECT e_name,e_sal INTO v_emp_name,v_emp_sal
FROM employee WHERE emp_num='5565';
IF v_emp_sal < 5000 THEN
DBMS_OUTPUT.PUT_LINE('Low paid Employee name is : '|| v_emp_name||' & salary is : ' ||v_emp_sal);
ELSIF v_emp_sal>5000 THEN
DBMS_OUTPUT.PUT_LINE('High paid Employee name is : '|| v_emp_name||' & salary is : ' ||v_emp_sal);
ELSE
DBMS_OUTPUT.PUT_LINE('Average paid Employee name is : '|| v_emp_name||' & salary is : ' ||v_emp_sal);
END IF;
EXCEPTION
WHEN OTHERS THEN
DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/