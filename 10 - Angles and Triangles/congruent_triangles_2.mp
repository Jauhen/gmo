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
    pair A, B, C;
    A := origin;
    B := 2.5 * dir(10);
    path a, b;
    a := cercle(A, 2.5);
    b := cercle(B, 1.5);
    C := a intersectionpoint b;
    draw triangle(A, B, C) withpen pencircle scaled 1.25;
    nomme.llft(A, btex $$ etex);
    nomme.top(B, btex $$ etex);
    nomme.lrt(C, btex $$ etex);
    draw marqueangle(B, A, C, 1);
    label.lrt(btex $5$ etex, 0.5[A, B]);
    label.urt(btex $3$ etex, 0.5[B, C]);
    label.ulft(btex $5$ etex, 0.5[A, C]);

    pair A', B', C';
    A' := 2A shifted (3.5, 0);
    B' := 2B shifted (3.5, 0);
    C' := 2C shifted (3.5, 0);
    draw C'--A'--B' withpen pencircle scaled 1.25;
    draw C'--B' dashed evenly;
    nomme.llft(A', btex $$ etex);
    nomme.top(B', btex $$ etex);
    nomme.lrt(C', btex $$ etex);
    draw marqueangle(B', A', C', 1);
    label.lrt(btex $10$ etex, 0.5[A', B']);
    label.urt(btex $?$ etex, 0.5[B', C']);
    label.ulft(btex $10$ etex, 0.5[A', C']);

    pair A'', B'', C'';
    A'' := A' shifted (6, 0);
    B'' := B' shifted (6, 0);
    C'' := C' shifted (6, 0);
    draw triangle(A'', B'', C'') withpen pencircle scaled 1.25;
    nomme.llft(A'', btex $$ etex);
    nomme.top(B'', btex $$ etex);
    nomme.lrt(C'', btex $$ etex);
    draw marqueangle(B'', A'', C'', 1);
    label.lrt(btex $10$ etex, 0.5[A'', B'']);
    label.urt(btex $6$ etex, 0.5[B'', C'']);
    label.ulft(btex $10$ etex, 0.5[A'', C'']);
    label.(btex $\Longleftrightarrow$ etex, (9.25, 2));
  fin;
endfig;
end