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
  repere(-1,15,u,-1,6,u);
    pair A, B, C, D, E;
    A := origin;
    B := (3.5, 3.5);
    C := (6, 0);
    D := 0.5B;
    E := 0.5C; 
    draw triangle(A, B, C) withpen pencircle scaled 1.25;
    draw D--E withpen pencircle scaled 1.25;
    nomme.llft(A, btex $A$ etex);
    nomme.top(B, btex $B$ etex);
    nomme.lrt(C, btex $C$ etex);
    nomme.ulft(D, btex $D$ etex);
    nomme.bot(E, btex $E$ etex);
  fin;
endfig;
end