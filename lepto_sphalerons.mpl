Digits := 40
print();
# 
# 
T[max] := 1000000000000000
print();
Y[L(0)] := theta[L]*T[max]
print();
evalf(T[max])
print();
print();
Y[B(0)] := 0.
print();
#sys := { (&DifferentialD;)/(&DifferentialD; T) Y[L](T) = (2*alpha *G)/(delta[L]) *M[Pl]* ( Y[L](T)  -  theta[L] T )  +                                                     (2 *alpha *chi)/(delta[L])*M[Pl] * T^(-2)* (delta[L]*Y[L](T)  +  delta[B]* Y[B](T)),                  (&DifferentialD;)/(&DifferentialD; T) Y[B](T)= (2* alpha *chi)/(delta[B])*M[Pl] * T^(-2)* (delta[L]*Y[L](T)  +  delta[B] *Y[B](T)),                          Y[L](10^15) = 0.0,    Y[B](10^15) = 0.0}; 
print();
# 
`#msub(mi("g"),mo("&ast;"))` := 106.75
print();
alpha := .3/`#msub(mi("g"),mo("&ast;"))`^(1/2)
print();
delta[L] := g[L]/Pi^2; delta[B] := g[B]/Pi^2
print();
N[gL] := 3
print();
# 
g[L] := 4*N[gL]; g[B] := 12*N[gL]
print();
G := 3/2*m[nu]^2*N[gL]^2/(Pi^5*H[vev]^4)
print();
H[vev] := 174
print();
m[nu] := 0.5000000000000000000000000000000000000000e-10
print();
M[Pl] := 12000000000000000000.0
print();
theta[L] := -6*eta[L]
print();
theta[B] := -6*eta[B]
print();
eta[L] := 0.1000000000000000000000000000000000000000e-20
print();
eta[B] := 0.
print();
print();
chi := omega/psi
print();
omega := 1/1000000
print();
#psi := 1/(Pi^2); 
print();
psi := .1025641025641025641025641025641025641026
print();
T[R] := 1/2*delta[L]/(alpha*G*M[Pl])
print();
evalf(T[R])
print();
#dsolve(sys,numeric,output=array([10^(15),10^14,10^13,10^12,10^11]));
print();
`&Upsilon;`[L(0)] := Y[L(0)]-theta[L]*T[max]
print();
`&Upsilon;`[B(0)] := Y[B(0)]-theta[B]*T[max]
print();
# 
U[p(0)] := delta[L]*`&Upsilon;`[L(0)]+delta[B]*`&Upsilon;`[B(0)]
print();
U[m(0)] := delta[L]*`&Upsilon;`[L(0)]-delta[B]*`&Upsilon;`[B(0)]
print();
# 
sysU := {diff((U[p])(T), T)+delta[L]*theta[L] = alpha*G*M[Pl]*((U[p])(T)+(U[m])(T))/delta[L]+4*alpha*chi*M[Pl]*(U[p])(T)/T^2, diff((U[m])(T), T)+delta[L]*theta[L] = alpha*G*M[Pl]*((U[p])(T)+(U[m])(T))/delta[L], (U[p])(1000000000000000) = U[p(0)], (U[m])(1000000000000000) = U[m(0)]}
print();
solU := dsolve(sysU, numeric, range = 100000000000 .. 1000000000000000, output = listprocedure, abserr = 1/100000000000000000)
print();
#solU(10^12),solU(10^13),solU(10^14),solU(10^15); 
print();

eval((solU[3])(1000000000000000))
print();
# 
# 
print();
(solU[3])(1000000000000000)
print();
myU[m](T) := eval(solU[2](T));
print();
myU[p](T) := eval(solU[3](T));
print();
(myU[m])(1000000000000), (myU[p])(1000000000000); fd := fopen("asymm.dat", WRITE, TEXT)
print();
print();
fprintf(fd, "# eta_L = %.15e\\n", eta[L]); fprintf(fd, "# eta_B = %.15e\\n", eta[B]); fprintf(fd, "#\\tT\\t\\tU_m\\t\\tU_p\\n")
print();
# 
logT[0] := 11; logT[1] := 15; num := 100; for i from 0 to num do logT[cur] := logT[0]+(logT[1]-logT[0])*i/num; T[cur] := 10^logT[cur]; Y[L] := 1/2*(rhs((myU[m])(T[cur]))+rhs((myU[m])(T[cur])))/delta[L]+theta[L]*T[cur]; Y[B] := 1/2*(rhs((myU[m])(T[cur]))-rhs((myU[m])(T[cur])))/delta[B]+theta[B]*T[cur]; fprintf(fd, "\\t%.15e\\t\\t%.15e\\t\\t%.15e\\n", logT[cur], Y[L], Y[B]) end do

fclose(fd)
print();
# 
