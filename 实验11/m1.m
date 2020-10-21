A=[-20,-20;1,0];
B=[1;0];
C=[0 20];
D=0;
G=ss(A,B,C,D);
M=[B,A*B];
N=[C;C*A];
n=length(A);
rank(M)
if rank(M)==n
    disp('系统可控')
else
    disp('系统不可控')
end
rank(N)
if rank(N)==n
    disp('系统可观')
else
    disp('系统不可观')
end
Qc=ctrb(A,B);
Cm=[0 1]*inv(Qc);
Cm2=inv([Cm;Cm*A]);
sysc=ss2ss(G,inv(Cm2))
Qo=obsv(A,C);
Om=inv(Qo)*[0;1];
Om2=[Om A*Om];
syso=ss2ss(G,inv(Om2))