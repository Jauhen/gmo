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
  repere(-5,15,u,-1,15,u);
    pair A, B, C, P;
    A := origin;
    B := (8,0);
    path a, b;
    a := cercle(A, 6);
    b := cercle(B, 7);
    C := a intersectionpoint b;
    a := cercle(A, 12);
    b := cercle(C, 9);
    P := b intersectionpoint a;
    draw C--P--A withpen pencircle scaled 1.25;
    draw triangle(A, B, C) withpen pencircle scaled 1.25;
    nomme.llft(A, btex $A$ etex);
    nomme.lrt(B, btex $B$ etex);
    nomme.urt(C, btex $C$ etex);
    nomme.ulft(P, btex $P$ etex);
    label.lrt(btex $8$ etex, 0.5[A, B]);
    label.urt(btex $7$ etex, 0.5[B, C]);
    label.ulft(btex $6$ etex, 0.5[A, C]);
  fin;
endfig;
end
