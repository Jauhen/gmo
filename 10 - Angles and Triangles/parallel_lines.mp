prologues:=3;
outputformat:="svg";
outputtemplate:=("%j_%c" & "." & outputformat);

input latexmp;
setupLaTeXMP(packages="amssymb");
input repere;

beginfig(0);
  u = 0.4cm;
  repere(-5,5,u,-5,5,u);
    path l, m, n;
    l := (-5, 1.5)--(5, 1.5);
    m := (-5, -1.5)--(5, -1.5);
    n := (2, 4)--(-2, -4);
    draw l withpen pencircle scaled 1.25;
    draw m withpen pencircle scaled 1.25;
    draw n withpen pencircle scaled 1.25;
    label.top(btex $l$ etex, point 0.05 of l);
    label.top(btex $m$ etex, point 0.05 of m);
    label.lrt(btex $n$ etex, point 0.05 of n);
    pair A, B;
    A := l intersectionpoint n;
    B := m intersectionpoint n;
    label.lrt(btex $\theta$ etex, A);
    label.llft(btex $\beta$ etex, A + 0.5 * dir(180));
    label.llft(btex $\gamma$ etex, B + 0.5 * dir(180));
    label.urt(btex $\alpha$ etex, B + 0.5 * dir(0));
  fin;
endfig;
end