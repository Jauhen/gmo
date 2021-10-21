prologues:=3;
outputformat:="svg";
outputtemplate:=("%j_%c" & "." & outputformat);

input latexmp;
setupLaTeXMP(packages="amssymb");
input repere;

beginfig(0);
  u = 0.6cm;
  taille_marque_s := 0.15cm;
  angle_marque_s := 90;
  repere(-1,8,u,-1,6,u);
    pair A, B, C, D;
    A := origin;
    B := (4, 0);
    C := (4, 4);
    D := (0, 4);
    draw A--B--C--D--A withpen pencircle scaled 1.25;
    draw B--D withpen pencircle scaled 1.25;
    nomme.llft(A, btex $$ etex);
    nomme.top(B, btex $$ etex);
    nomme.lrt(C, btex $$ etex);
    nomme.lrt(D, btex $$ etex);
  fin;
endfig;
end