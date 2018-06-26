local function MrRex(msg)
if msg.chat_id then
      local id = tostring(msg.chat_id)
      if id:match('-100(%d+)') then
        if not redis:sismember("ChatSuper:Bot",msg.chat_id) then
          redis:sadd("ChatSuper:Bot",msg.chat_id)
        end
----------------------------------
elseif id:match('^-(%d+)') then
if not  redis:sismember("Chat:Normal",msg.chat_id) then
redis:sadd("Chat:Normal",msg.chat_id)
end
-----------------------------------------
elseif id:match('') then
if not redis:sismember("ChatPrivite",msg.chat_id) then

redis:sadd("ChatPrivite",msg.chat_id)
end
   else
if not redis:sismember("ChatSuper:Bot",msg.chat_id) then
redis:sadd("ChatSuper:Bot",msg.chat_id)
end
end
---------
if not redis:get("OpenChat") or redis:ttl("OpenChat") == -2 then
 local open= redis:smembers("ChatSuper:Bot")
          for k,v in pairs(open) do
  tdbot.openChat(v)
    redis:setex("OpenChat", 110, true)
  end
end
end
end

return {
	patterns = {},
	pre_process = MrRex
}
-- by @Rex_Dev
-- #RexCompany ;)