prologues:=3;
outputformat:="svg";
outputtemplate:=("%j_%c" & "." & outputformat);

input latexmp;
setupLaTeXMP(packages="amssymb");
input repere;

beginfig(0);
  u = 1cm;
  repere(-1,5,u,-1,5,u);
    drawarrow (0, 0)--(2 * dir(120)) withpen pencircle scaled 1.25;
    drawarrow (0, 0)--(2, 0) withpen pencircle scaled 1.25;
    pickup pencircle scaled 2.5;
    drawdot (0, 0);
  fin;
endfig;
end