local function run(msg, matches)
    if matches[1] == 'دعوت مسدود ها' and is_mod(msg) then
        if gp_type(msg.to.id) == "channel" then
            tdcli.getChannelMembers(msg.to.id, 0, "Kicked", 200, function (i, naji)
                for k,v in pairs(naji.members_) do
                    tdcli.addChatMember(i.chat_id, v.user_id_, 50, dl_cb, nil)
                end
            end, {chat_id=msg.to.id})
            return "`••انجام شد\n➖➖➖➖➖➖➖➖➖➖➖\n••اعضای مسدود شده به گروه با موفقیت دعوت شدند 💠`"
        end
        return "`••اخطار\n➖➖➖➖➖➖➖➖➖➖➖\n••این کار فقط درسوپر گروه ممکن است 💠`"
    end
end

return { 
patterns = { 
}, 
patterns_fa = { 
"^(دعوت مسدود ها)$"
}, 
run = run 
}
