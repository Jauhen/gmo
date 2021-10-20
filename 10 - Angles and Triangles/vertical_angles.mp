prologues:=3;
outputformat:="svg";
outputtemplate:=("%j_%c" & "." & outputformat);

input latexmp;
setupLaTeXMP(packages="amssymb");
input repere;

beginfig(0);
  u = 1cm;
  repere(-5,5,u,-5,5,u);
    pair O, A, B, C, D;
    O := (0, 0);
    A := (2 * dir(25));
    B := (2 * dir(-25));
    C := (-2 * dir(25));
    D := (-2 * dir(-25));
    drawarrow O--A withpen pencircle scaled 1.25;
    drawarrow O--B withpen pencircle scaled 1.25;
    drawarrow O--C withpen pencircle scaled 1.25;
    drawarrow O--D withpen pencircle scaled 1.25;
    pickup pencircle scaled 2.5;
    drawdot O;
    nomme(B, O, A, btex $\phi$ etex);
    nomme(D, O, C, btex $\phi'$ etex);
    label.top(btex $\theta$ etex, O + 0.15 * dir(90));
    label.bot(btex $\theta'$ etex, O + 0.15 * dir(-90));
  fin;
endfig;
end