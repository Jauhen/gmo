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
  repere(-5,8,u,-5,6,u);
    pair A, F, G, K;
    A := origin;
    F := (8, 0);
    draw A--F withpen pencircle scaled 1.25;
    nomme.top(A, btex $A$ etex);
    nomme.top(F, btex $F$ etex);
    nomme.top(0.15[A,F], btex $B$ etex);
    nomme.top(0.45[A,F], btex $C$ etex);
    nomme.top(0.6[A,F], btex $D$ etex);
    nomme.top(0.8[A,F], btex $E$ etex);
    G := (1, -1.5);
    K := (6, -1.8);
    draw G--K withpen pencircle scaled 1.25;
    nomme.bot(G, btex $G$ etex);
    nomme.bot(K, btex $K$ etex);
    nomme.bot(0.4[G,K], btex $H$ etex);
    nomme.bot(0.6[G,K], btex $I$ etex);
    nomme.bot(0.75[G,K], btex $J$ etex);
  fin;
endfig;
end
