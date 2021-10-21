prologues:=3;
outputformat:="svg";
outputtemplate:=("%j_%c" & "." & outputformat);

input latexmp;
setupLaTeXMP(packages="amssymb");
input repere;

beginfig(0);
  u = 0.55cm;
  taille_marque_s := 0.15cm;
  angle_marque_s := 90;
  repere(-1,5,u,-1,5,u);
    pair A, B, C;
    A := origin;
    B := 4.2 * dir(65);
    C := (3, 0);
    draw triangle(A, B, C) withpen pencircle scaled 1.25;
    nomme.top(A, btex $$ etex);
    nomme.top(B, btex $$ etex);
    nomme.top(C, btex $$ etex);
  fin;
endfig;
end