CREATE OR REPLACE PACKAGE Pk1 AS
Procedure Proc1(A Int,B Int);
Procedure Proc2(C Int);
Function Fn1 (A Int) Return Varchar;
Function Fn2 (A Int,B Int,C Int) Return Number;
END Pk1;

Create Or Replace Package Body Pk1 As
Procedure Proc1(A Int,B Int) Is
Begin
Dbms_Output.Put_Line('Sum:'||(a+b));
Dbms_Output.Put_Line('Average:'||((a+b)/2));
Dbms_Output.Put_Line('Product is:'||(a*b));
End Proc1;

Procedure Proc2(c int) Is
Begin
Dbms_Output.Put_Line('Square root is:'||(sqrt(c)));
End Proc2;

Function Fn1(A Int) Return Varchar Is
begin
if(MOD(A,2)=0) THEN
return 'Even';
Else
return 'Odd';
End If;
End Fn1;

Function Fn2(A Int,B Int,C Int) Return Number Is d int;
Begin
D:=A+B+C;
Return D;
End fn2;
END Pk1;

DECLARE
p int;
Q Int;
R Int;
S Int;
sum1 int;
result varchar2(4);
Begin
P:=&p;
Q:=&q;
R:=&r;
s:=&s;
Pk1.Proc1(P,Q);
Pk1.Proc2(R);
Result:=Pk1.Fn1(S);
Dbms_Output.Put_Line('The given number is:'||Result);
Sum1:=Pk1.Fn2(P,Q,S);
Dbms_Output.Put_Line('Sum of three numbers is:'||sum1);
END;
