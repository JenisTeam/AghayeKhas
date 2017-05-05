function run(msg, matches) 
local title , res = http.request('http://emrani.net/hafez/api/hafez/fal') 
if res ~= 200 then
 return "خطا! " end 
 local jdat = json:decode(title)
 local text = jdat.poem.." " 
 return text end 
 return { 
patterns = {
}, 
patterns_fa = {
"^(فال)$"
}, 
run = run
 }

