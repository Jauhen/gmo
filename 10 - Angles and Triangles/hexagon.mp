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
  repere(-3,8,u,-1,7,u);
    pair A, B, C, D, E, F;
    A := origin;
    B := 3 * dir(180 * 2 / 3);
    C := B + 3 * dir(180 / 3);
    D := C + 3 * dir(0);
    E := D + 3 * dir(-180 / 3);
    F := E + 3 * dir(-180 * 2 / 3);
    draw A--B--C--D--E--F--A withpen pencircle scaled 1.25;
    draw C--A--D--F withpen pencircle scaled 1.25;
    nomme.llft(A, btex $$ etex);
    nomme.top(B, btex $$ etex);
    nomme.lrt(C, btex $$ etex);
    nomme.lrt(D, btex $$ etex);
    nomme.lrt(E, btex $$ etex);
    nomme.lrt(F, btex $$ etex);
  fin;
endfig;
end
