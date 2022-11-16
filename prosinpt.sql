create or replace procedure p1(v_empno in number,v_ename out varchar2,v_deptno out number) as
begin
select ename,deptno into v_ename,v_deptno from emp where empno=v_empno;
dbms_output.put_line(v_empno||'   '||v_ename||'     '||v_deptno);
end;
