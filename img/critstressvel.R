I    = (1:10)/10
ro   = 1000
g    = 9.81



a = 23*I**0.5
b = 1.8
n = 0.01
A = a/(100*n)

tau_crit = 22.5
v_crit   = 0.264


hcrit_tau = tau_crit/(ro*g*I)

hcrit_v   = (v_crit*(1/(b-1))*100*n)/a

ylim = range(hcrit_tau,hcrit_v)
plot(I,hcrit_v,ylim = ylim)
lines(I,hcrit_tau)

