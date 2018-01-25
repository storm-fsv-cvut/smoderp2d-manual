crit = read.table('crit.txt',header = TRUE,sep=';',colClasses = c(rep('character',2),rep('numeric',7)))


I    = 0.01
ro   = 1000
g    = 9.81


# loam
# X = 1.008e+1
# Y = 5.613e-1
# v_crit   = 1.079e+1
# tau_crit = 2.48e-1

# a = X*I**Y
# b = 1.739
n = seq(0.001,0.1,length=10)
# n = 0.00001
N = length(crit$ID)

hcrit_tau = function (tau_crit,ro,g,I) {tau_crit/(ro*g*I)}
hcrit_v = function (v_crit,b,n,x,y) {(v_crit*(1/(b-1))*100*n)/(x*I**y)}




for (in_ in n){
  layout(matrix(c(1,2),ncol = 2))
  hct = c()
  hcv = c()
  for (i in 1:N) {
    hct = c(hct,hcrit_tau(crit$tau[i],ro,g,I))
    hcv = c(hcv,hcrit_v(crit$v[i],crit$b[i],in_,crit$x[i],crit$y[i]))
  }
  
  barplot(height = hct,names.arg = crit$ID)
  mtext(paste('manningovo n: ',in_, '; sklon %: ', I*100),side=3,line=2)
  barplot(height = hcv,names.arg = crit$ID)
}