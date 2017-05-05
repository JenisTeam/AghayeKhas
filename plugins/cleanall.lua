 function run(msg, matches)  
 	    if  is_mod1(msg.chat_id_, msg.sender_user_id_) then
                tdcli_function ({
                    ID = "GetChannelMembers",
                    channel_id_ = (msg.to.id or msg.chat_id_):gsub('-100',''),
                    filter_ = {
                      ID = "ChannelMembersRecent"
                    },
                    offset_ = 0,
                    limit_ = 10000
                  }, function (ex, result)
                     for v,k in pairs(result.members_) do
                       tdcli.deleteMessagesFromUser(ex.chat_id, k.user_id_)
                     end
                    end, {chat_id=(msg.to.id or msg.chat_id_)})
                tdcli_function ({
                    ID = "GetChannelMembers",
                    channel_id_ = (msg.to.id or msg.chat_id_):gsub('-100',''),
                    filter_ = {
                      ID = "ChannelMembersKicked"
                    },
                    offset_ = 0,
                    limit_ = 10000
                  }, function (ex, result)
                     for v,k in pairs(result.members_) do
                       tdcli.deleteMessagesFromUser(ex.chat_id, k.user_id_)
                     end
                    end, {chat_id=(msg.to.id or msg.chat_id_)})
                  text = '●● دستور مورد نظر با موفقيت انجام شد !!\n➖➖➖➖➖➖➖➖➖➖➖\n●● همه ي پيام هاي سوپر گروه پاکسازي شد !!'
                  return text
        end
end

return { 
  patterns = {
  },
  patterns_fa = {
"(پاکسازی کلی)$",
  },
  run = run
}