local function run(msg, matches)
  local url , res = http.request('http://probot.000webhostapp.com/api/time.php/')
  if res ~= 200 then return tdcli.sendMessage(msg.chat_id_, msg.id_, 1, '<b>No Connection</b>', 1, 'html') end
  local jdat = json:decode(url)
   if jdat.L == "0" then
   jdat_L = 'خیر'
   elseif jdat.L == "1" then
   jdat_L = 'بله'
   end
  local text = '●● تاریخ \n <code>'..jdat.FAdate..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● تعداد روز های ماه جاری \n <code>'..jdat.t..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● عدد روز در هفته \n <code>'..jdat.w..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● شماره ی این هفته در سال \n <code>'..jdat.W..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● نام باستانی ماه \n <code>'..jdat.p..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● شماره ی ماه از سال \n <code>'..jdat.n..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● نام فصل \n <code>'..jdat.f..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● شماره ی فصل از سال \n <code>'..jdat.b..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● تعداد روز های گذشته از سال \n <code>'..jdat.z..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● در صد گذشته از سال \n <code>'..jdat.K..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● تعداد روز های باقیمانده از سال \n <code>'..jdat.Q..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● در صد باقیمانده از سال \n <code>'..jdat.k..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● نام حیوانی سال \n <code>'..jdat.q..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● شماره ی قرن هجری شمسی \n <code>'..jdat.C..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● سال کبیسه \n <code>'..jdat_L..'</code>\n➖➖➖➖➖➖➖➖➖➖➖\n●● منطقه ی زمانی تنظیم شده \n <code>'..jdat.e..'</code>\n\n●● اختلاف ساعت جهانی \n <code>'..jdat.P..'</code>\n\n●● اختلاف ساعت جهانی به ثانیه \n <code>'..jdat.A..'</code>\n'
  tdcli.sendMessage(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
return {
  patterns ={
 },
  patterns_fa ={
"^(تاریخ)$"
 },
  run = run
}
