SQL*Plus: Release 21.0.0.0.0 - Production on Tue Mar 5 22:57:51 2024
Version 21.3.0.0.0

Copyright (c) 1982, 2021, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
Last Successful login time: Mon Mar 04 2024 05:16:37 -08:00

Connected to:
Oracle Database 21c Express Edition Release 21.0.0.0.0 - Production
Version 21.3.0.0.0

SQL> declare
  2  num1 number;
  3  num2 number;
  4  num3 number;
  5  begin
  6  num1:=20;
  7  num2:=15;
  8  num3:=num1+num2;
  9  dbms_output.put_line('The sum of '||num1||' and '||num2||' is '||num3);
 10  num3:=num1-num2;
 11
 12  set serveroutput on
 13   begin
 14        dbms_output.Put_line('hai');
 15          end;
 16       /
set serveroutput on
    *
ERROR at line 12:
ORA-06550: line 12, column 5:
PL/SQL: ORA-00922: missing or invalid option
ORA-06550: line 12, column 1:
PL/SQL: SQL Statement ignored


SQL>
SQL> set serveroutput on
SQL>  begin
  2        dbms_output.Put_line('hai');
  3          end;
  4       /
hai

PL/SQL procedure successfully completed.

SQL> declare
  2      var1 varchar(10);
  3         num1 int(30);
  4         begin
  5         var1:='hello';
  6         num1:=100;
  7         dbms_output.Put_line('var1:'||var1);
  8         dbms_output.Put_line('Num1:'||num1);
  9        end;
 10       /
var1:hello
Num1:100

PL/SQL procedure successfully completed.

SQL>
SQL> set serveroutput on
SQL>  CREATE OR REPLACE PROCEDURE greetings
  2    AS
  3    BEGIN
  4       dbms_output.put_line('Hello World!');
  5    END;
  6    /

Procedure created.

SQL>  execute greetings
Hello World!

PL/SQL procedure successfully completed.

SQL> Hello World!
SP2-0734: unknown command beginning "Hello Worl..." - rest of line ignored.
SQL> FACTORIAL OF A NUMBER
SP2-0734: unknown command beginning "FACTORIAL ..." - rest of line ignored.
SQL> set serveroutput on;
SQL>  declare
  2    num number := 6;
  3    fact number := 1;
  4    temp number;
  5    begin
  6    temp :=num;
  7    while( temp>0 )
  8    loop
  9    fact := fact*temp;
 10    temp := temp-1;
 11   end loop;
 12    dbms_output.put_line('factorial of '|| num || ' is ' || fact);
 13    end;
 14
 15  /
factorial of 6 is 720

PL/SQL procedure successfully completed.

SQL> declare
  2
  3      x number(5);
  4      y number(5);
  5      z number(7);
  6        begin
  7     x:=10;
  8    y:=20;
  9    z:=x+y;
 10    dbms_output.put_line('Sum is '||z);
 11    end;
 12    /
Sum is 30

PL/SQL procedure successfully completed.

SQL> Declare
  2     Var1 integer;
  3     Var2 integer;
  4     Var3 integer;
  5     Begin
  6     Var1:=&var1;
  7     Var2:=&var2;
  8     Var3:=var1+var2;
  9     Dbms_output.put_line(var3);
 10    End;
 11     /
Enter value for var1: 5
old   6:    Var1:=&var1;
new   6:    Var1:=5;
Enter value for var2: 6
old   7:    Var2:=&var2;
new   7:    Var2:=6;
11

PL/SQL procedure successfully completed.

SQL> CREATE [OR REPLACE] PROCEDURE procedure_name
  2  [(parameter_name [IN | OUT | IN OUT] type [, ...])]
  3  {IS | AS}
  4  BEGIN
  5    < procedure_body >
  6  END procedure_name;
CREATE [OR REPLACE] PROCEDURE procedure_name
       *
ERROR at line 1:
ORA-00901: invalid CREATE command


SQL>
SQL> set serveroutput on
SQL>  CREATE OR REPLACE PROCEDURE greetings
  2    AS
  3    BEGIN
  4       dbms_output.put_line('Hello World!');
  5    END;
  6   /

Procedure created.

SQL> execute greetings
Hello World!

PL/SQL procedure successfully completed.

SQL> CREATE OR REPLACE PROCEDURE test1 IS
  2    2  BEGIN
  3    3  dbms_output.put_line('test sucess');
  4    4  END;
  5    5  /
  6
  7  \
  8  /

Warning: Procedure created with compilation errors.

SQL> CREATE OR REPLACE PROCEDURE test1 IS
  2    2  BEGIN
  3    3  dbms_output.put_line('test sucess');
  4    4  END;
  5    5  /
  6
  7  /

Warning: Procedure created with compilation errors.

SQL> CREATE OR REPLACE PROCEDURE addemp
  2  (depid IN dept.eid%TYPE,
  3  depname IN dept.ename%TYPE,
  4  depsal IN dept.psal%TYPE,
  5  deploc IN dept.ploc%TYPE)
  6  IS
  7  BEGIN
  8  INSERT INTO dept Values(depid,depname,depsal,deploc);
  9  dbms_output.Put_line('dpmt added');
 10  end;
 11  /

Warning: Procedure created with compilation errors.

SQL>     x number(5);
SP2-0734: unknown command beginning "x number(5..." - rest of line ignored.
SQL>     y number(5);
SP2-0734: unknown command beginning "y number(5..." - rest of line ignored.
SQL>     z number(7);
SP2-0734: unknown command beginning "z number(7..." - rest of line ignored.
SQL>       begin
  2     x:=10;
  3    y:=20;
  4    z:=x+y;
  5    dbms_output.put_line('Sum is '||z);
  6    end;
  7    /
   x:=10;
   *
ERROR at line 2:
ORA-06550: line 2, column 4:
PLS-00201: identifier 'X' must be declared
ORA-06550: line 2, column 4:
PL/SQL: Statement ignored
ORA-06550: line 3, column 3:
PLS-00201: identifier 'Y' must be declared
ORA-06550: line 3, column 3:
PL/SQL: Statement ignored
ORA-06550: line 4, column 3:
PLS-00201: identifier 'Z' must be declared
ORA-06550: line 4, column 3:
PL/SQL: Statement ignored
ORA-06550: line 5, column 35:
PLS-00201: identifier 'Z' must be declared
ORA-06550: line 5, column 3:
PL/SQL: Statement ignored


SQL> declare
  2
  3      x number(5);
  4      y number(5);
  5      z number(7);
  6        begin
  7     x:=10;
  8    y:=20;
  9    z:=x+y;
 10    dbms_output.put_line('Sum is '||z);
 11    end;
 12    /
Sum is 30

PL/SQL procedure successfully completed.

SQL> PROCEDURE
SP2-0042: unknown command "PROCEDURE" - rest of line ignored.
SQL> create procedure test
  2  begin
  3  dbms_output.put_line('test sucess');
  4  end;
  5  /

Warning: Procedure created with compilation errors.

SQL> execute test
BEGIN test; END;

      *
ERROR at line 1:
ORA-06550: line 1, column 7:
PLS-00905: object SYSTEM.TEST is invalid
ORA-06550: line 1, column 7:
PL/SQL: Statement ignored


SQL> create or replace procedure test is
  2  begin
  3  dbms_output.put_line('test sucess');
  4  end;
  5  /

Procedure created.

SQL> execute test
test sucess

PL/SQL procedure successfully completed.

SQL> CREATE OR REPLACE PROCEDURE addemp
  2  (depid IN dept.eid%TYPE,
  3  depname IN dept.ename%TYPE,
  4  depsal IN dept.psal%TYPE,
  5  deploc IN dept.ploc%TYPE)
  6  IS
  7  BEGIN
  8  INSERT INTO dept Values(depid,depname,depsal,deploc);
  9  dbms_output.Put_line('dpmt added');
 10  end;
 11  /

Warning: Procedure created with compilation errors.

SQL> execute addemp(3,'manu',1000,'idki')
BEGIN addemp(3,'manu',1000,'idki'); END;

      *
ERROR at line 1:
ORA-06550: line 1, column 7:
PLS-00905: object SYSTEM.ADDEMP is invalid
ORA-06550: line 1, column 7:
PL/SQL: Statement ignored


SQL> CREATE OR REPLACE PROCEDURE addemp
  2  (depid IN dept.eid%TYPE,
  3  depname IN dept.ename%TYPE,
  4  depsal IN dept.psal%TYPE,
  5  deploc IN dept.ploc%TYPE)
  6  IS
  7  BEGIN
  8  INSERT INTO dept Values(depid,depname,depsal,deploc);
  9  dbms_output.Put_line('dpmt added');
 10  end;
 11  /

Warning: Procedure created with compilation errors.

SQL>  CREATE OR REPLACE PROCEDURE addemp is
  2  (depid IN dept.eid%TYPE,
  3  depname IN dept.ename%TYPE,
  4  depsal IN dept.psal%TYPE,
  5  deploc IN dept.ploc%TYPE)
  6  IS
  7  BEGIN
  8  INSERT INTO dept Values(depid,depname,depsal,deploc);
  9  dbms_output.Put_line('dpmt added');
 10  end;
 11  /

Warning: Procedure created with compilation errors.

SQL> DECLARE
  2      a number;
  3      b number;
  4      c number;
  5   PROCEDURE findMin(x IN number, y IN number, z OUT number) IS
  6   BEGIN
  7       IF x < y THEN
  8         z:= x;
  9      ELSE
 10          z:= y;
 11      END IF;
 12    END;
 13    BEGIN
 14       a:= 31;
 15       b:= 56;
 16       findMin(a, b, c);
 17      dbms_output.put_line(' Minimum of (31,56: ' || c);
 18    END;
 19   /
Minimum of (31,56: 31

PL/SQL procedure successfully completed.

SQL> DECLARE
  2       a number;
  3    PROCEDURE squareNum(x IN OUT number) IS
  4    BEGIN
  5      x := x * x;
  6    END;
  7    BEGIN
  8       a:= 21;
  9       squareNum(a);
 10       dbms_output.put_line(' Square of (21): ' || a);
 11    END;
 12    /
Square of (21): 441

PL/SQL procedure successfully completed.

SQL> DELIMITER //
SP2-0734: unknown command beginning "DELIMITER ..." - rest of line ignored.
SQL> CREATE PROCEDURE sumcalc()
  2  BEGIN
  3  DECLARE num1 INT;
  4  DECLARE num2 INT;
  5  DECLARE num3 INT;
  6  DECLARE total INT;
  7  SET num1 = 10;
  8  SET num2 = 20;
  9  SET num3 = 30;
 10  SET total = num1 + num2 + num3;
 11  SELECT total AS sum_result;
 12  END;
 13   /

Warning: Procedure created with compilation errors.11
