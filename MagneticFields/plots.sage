
I = [0.0,1.0,1.23,1.51,2.03,2.23,2.60]
B = [.041,.168,.217,.254,.320,.336,.369]

N = [0,2,4,6,8,10,12]
B2 = [1/.318,1/.296,1/.283,1/.244,1/.223,1/.211,1/.188]
print B2

D = [2.5,3.5,4.5,5.5,6.5]
B3 = [1.41,1.21,.914,.274,.070]

# mydata = zip(I,B)
# var ('a,b')
# mymodel(I) = a*I + b
# myfit = find_fit(mydata,mymodel,solution_dict = True)
# sp = points(mydata,color = 'purple',size = 50) + plot(mymodel(a=myfit[a],b=myfit[b]),(x,-.1,3))
# sp.axes_labels(['I','B'])
# print myfit
# show(sp)
# a = .129, b = .0475

mydata = zip(N,B2)
var ('a,b')
mymodel(N) = a*N + b
myfit = find_fit(mydata,mymodel,solution_dict = True)
sp = points(mydata,color = 'purple',size = 50) + plot(mymodel(a=myfit[a],b=myfit[b]),(N,-.1,12.5))
sp.axes_labels(['N','1/B'])
print myfit
show(sp) 
#a = .182 b = 3.007