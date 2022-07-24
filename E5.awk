BEGIN{
FS=":"
}
{
/^[0-9]/{
split($2,Qty,",")
t=0
for(x in Qty){
	t=t+Qty[x]
}
print "ITEM CODE:",$1," Total Sales count is:",t
}
END{
print "------------------------------------"
print "Thank you!!!"
print "------------------------------------"
