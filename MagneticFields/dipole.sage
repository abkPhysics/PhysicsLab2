D = [2.5,3.5,4.5,5.5,6.5]
B = [1/1.41,1/1.21,1/.914,1/.274,1/.070]


#linear
# mydata = zip(D,B)
# var ('a,b')
# mymodel(D) = a*D + b
# myfit = find_fit(mydata,mymodel,solution_dict = True)
# sp = points(mydata,color = 'purple',size = 50) + plot(mymodel(a=myfit[a],b=myfit[b]),(D,2,7),)
# sp.axes_labels(['D','1/B'])
# print myfit
# show(sp) 

#qudratic
# mydata = zip(D,B)
# var ('a,b,c')
# mymodel(D) = a*D^2 + b*D + c
# myfit = find_fit(mydata,mymodel,solution_dict = True)
# sp = points(mydata,color = 'purple',size = 50) + plot(mymodel(a=myfit[a],b=myfit[b],c=myfit[c]),(D,2,7))
# sp.axes_labels(['D','1/B'])
# print myfit
# show(sp) 

#cubic
mydata = zip(D,B)
var ('a,b,c,d')
mymodel(D) = a*D^3 + b*D^2 + c*D + d
myfit = find_fit(mydata,mymodel,solution_dict = True)
sp = points(mydata,color = 'purple',size = 50) + plot(mymodel(a=myfit[a],b=myfit[b],c=myfit[c],d=myfit[d]),(D,2,7),)
sp.axes_labels(['D','1/B'])
print myfit
show(sp) 
