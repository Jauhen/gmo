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
  repere(-1,6,u,-1,6,u);
    pair A, B, C, D, E;
    A := origin;
    B := 3 * dir(45);
    C := (5, 0);
    E := B + 2 * dir(180);
    D := B + 2 * dir(0);
    draw (0, ypart B)--(5, ypart B) withpen pencircle scaled 1.25 withcolor vertfonce;
    draw triangle(A, B, C) withpen pencircle scaled 1.25;
    nomme.llft(A, btex $A$ etex);
    nomme.top(B, btex $B$ etex);
    nomme.lrt(C, btex $C$ etex);
    nomme.top(E, btex $D$ etex);
    nomme.top(D, btex $E$ etex);
    label.bot(btex $\gamma$ etex, B + 0.2 * dir(-90));
    label.llft(btex $\alpha$ etex, B + 0.5 * dir(180));
    label.lrt(btex $\beta$ etex, B + 0.8 * dir(0));
    label.urt(btex $\beta$ etex, A + 0.6 * dir(0));
    label.ulft(btex $\alpha$ etex, C + 0.6 * dir(180));
  fin;
endfig;
end