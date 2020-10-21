n = [1];
m = [0.5 1.5 1 0];
sys=tf(n,m);
nyquist(sys)