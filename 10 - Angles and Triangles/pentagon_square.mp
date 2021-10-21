prologues:=3;
outputformat:="svg";
outputtemplate:=("%j_%c" & "." & outputformat);

input latexmp;
setupLaTeXMP(packages="amssymb");
input repere;

beginfig(0);
  u = 0.65cm;
  taille_marque_s := 0.15cm;
  angle_marque_s := 90;
  repere(-3,8,u,-1,6,u);
    pair A, B, C, D, E, F, G;
    A := origin;
    B := 3.5 * dir(180 * 3 / 5);
    C := B + 3.5 * dir(180 / 5);
    D := C + 3.5 * dir(-180 / 5);
    E := D + 3.5 * dir(-180 * 3 / 5);
    F := (3.5, 3.5);
    G := (0, 3.5);
    draw A--B--C--D--E--A withpen pencircle scaled 1.25;
    draw A--G--F--E withpen pencircle scaled 1.25;
    draw C--A--F withpen pencircle scaled 1.25 withcolor vertfonce;
    nomme.llft(A, btex $A$ etex);
    nomme.lft(B, btex $E$ etex);
    nomme.top(C, btex $D$ etex);
    nomme.rt(D, btex $C$ etex);
    nomme.lrt(E, btex $B$ etex);
    nomme.llft(G, btex $G$ etex);
    nomme.lrt(F, btex $F$ etex);
  fin;
endfig;
end
