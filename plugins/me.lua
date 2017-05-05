local function run(msg, matches)
	if matches[1]:lower() == 'اطلاعات من' then
		function get_id(arg, data)
			local username
			if data.first_name_ then
				if data.username_ then
					username = '@'..data.username_
				else
					username = '<i>No Username!</i>'
				end
				local telNum
				if data.phone_number_ then
					telNum = '+'..data.phone_number_
				else
					telNum = '----'
				end
				local lastName
				if data.last_name_ then
					lastName = data.last_name_
				else
					lastName = '----'
				end
				local rank
				if is_sudo(msg) then
					rank = 'صاحب ربات'
				elseif is_owner(msg) then
					rank = 'مالک گروه'
				elseif is_admin(msg) then
					rank = 'ادمین ربات'
				elseif is_mod(msg) then
					rank = 'مدیر ربات'
				else
					rank = 'ممبر گروه'
				end
				local text = '<b>•• اطلاعات شما 💠</b>\n\n<b>•• نام : \n</b><b>'..data.first_name_..'</b>\n➖➖➖➖➖➖➖➖➖➖➖\n<b>•• نام خانوادگی : \n</b> <b>'..lastName..'</b>\n➖➖➖➖➖➖➖➖➖➖➖\n<b>•• یوزرنیم : \n</b>'..username..'\n➖➖➖➖➖➖➖➖➖➖➖\n<b>•• آیدی : \n</b> [ <code>'..data.id_..'</code> ]\n➖➖➖➖➖➖➖➖➖➖➖\n<b>•• آیدی گروه : \n</b> [ <code>'..arg.chat_id..'</code> ]\n➖➖➖➖➖➖➖➖➖➖➖\n<b>•• مقام شما : \n</b> <i>'..rank..'</i>'
				tdcli.sendMessage(arg.chat_id, msg.id_, 1, text, 1, 'html')
			end
		end
		tdcli_function({ ID = 'GetUser', user_id_ = msg.sender_user_id_, }, get_id, {chat_id=msg.chat_id_, user_id=msg.sendr_user_id_})
	end
end

return {
patterns = { 
 },
patterns_fa = { 
"^(اطلاعات من)$",
 },
run = run
}