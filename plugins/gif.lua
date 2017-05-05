	
	function run(msg, matches)
		if (matches[1] == "ذخیره گیف") and tonumber(msg.reply_to_message_id_) > 0  and is_sudo(msg) then
          function cb(a,b,c)
            if b.content_.ID == 'MessageAnimation' then
        		redis:set('GIFGIF', b.content_.animation_.animation_.persistent_id_)
       			return 'Saved'
          	end
          end
       	 tdcli.getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_), cb)
       end
       if matches[1] == 'ارسال گیف' then
         tdcli_function ({
    ID = "SendMessage",
    chat_id_ = msg.chat_id_,
    reply_to_message_id_ = msg.id_,
    disable_notification_ = 0,
    from_background_ = 1,
    reply_markup_ = nil,
    input_message_content_ = {
      ID = "InputMessageAnimation",
      animation_ = {ID = "InputFilePersistentId", persistent_id_ = redis:get('GIFGIF')},
      width_ = width or '',
      height_ = height or '',
      caption_ = caption or ''
    },
  }, dl_cb, nil)
       end
    end

    return {

    patterns = {
	},
	patterns_fa = {
    	'^(ارسال گیف)$',
    	'^(ذخیره گیف)$',
},
	run = run,
}
