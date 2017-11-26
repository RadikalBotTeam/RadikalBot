do
 function run(msg, matches)
return [[ 
شماره کارت : 123456789
به نام : اسم  و فامیل
بانک : اسم بانک
پرداخت انلاین :
درگاه پرداخت
]]
end
return {
patterns = {
"^(پرداخت)$",
},
run = run
}
end