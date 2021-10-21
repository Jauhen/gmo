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
  repere(-5,10,u,-5,6,u);
    pair A, B, C, D, E, F;
    B := origin;
    A := 4*dir(70);
    F := (8, 0);
    E := F + 3 * dir(70);
    C := whatever[A, F]=whatever[B, E];
    D := whatever[B, F]=whatever[C, C+dir(250)];
    draw A--F--E--B--A withpen pencircle scaled 1.25;
    draw C--D withpen pencircle scaled 1.25;
    draw B--F withpen pencircle scaled 1.25;
    nomme.ulft(A, btex $A$ etex);
    nomme.llft(B, btex $B$ etex);
    nomme.top(C, btex $C$ etex);
    nomme.bot(D, btex $D$ etex);
    nomme.urt(E, btex $E$ etex);
    nomme.lrt(F, btex $F$ etex);
    label.lft(btex $x$ etex, 0.5[A, B]);
    label.rt(btex $y$ etex, 0.5[E, F]);
    label.lft(btex $z$ etex, 0.5[C, D]);
  fin;
endfig;
end
