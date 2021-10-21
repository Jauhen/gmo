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
  repere(-3,8,u,-1,6,u);
    pair A, B, C, D, E;
    A := origin;
    B := 3.5 * dir(180 * 3 / 5);
    C := B + 3.5 * dir(180 / 5);
    D := C + 3.5 * dir(-180 / 5);
    E := D + 3.5 * dir(-180 * 3 / 5);
    draw A--B--C--D--E--A withpen pencircle scaled 1.25;
    draw B--D--A withpen pencircle scaled 1.25;
    nomme.llft(A, btex $$ etex);
    nomme.top(B, btex $$ etex);
    nomme.lrt(C, btex $$ etex);
    nomme.lrt(D, btex $$ etex);
    nomme.lrt(E, btex $$ etex);
  fin;
endfig;
end
