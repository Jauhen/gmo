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
    pair A, B, C;
    A := origin;
    B := 3 * dir(45);
    C := (5, 0);
    draw (5, 0)--(8, 0) withpen pencircle scaled 1.25;
    draw triangle(A, B, C) withpen pencircle scaled 1.25;
    nomme.llft(A, btex $A$ etex);
    nomme.top(B, btex $C$ etex);
    nomme.lrt(C, btex $B$ etex);
    label.bot(btex $\gamma$ etex, B + 0.2 * dir(-90));
    label.urt(btex $\beta$ etex, A + 0.6 * dir(0));
    label.ulft(btex $\alpha$ etex, C + 0.6 * dir(180));
    label.urt(btex $\theta$ etex, C);
  fin;
endfig;
end