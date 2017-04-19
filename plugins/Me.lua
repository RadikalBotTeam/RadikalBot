--Start by MahDiRoO :)
do

local function matador(msg, matches)
local cmd = redis:hget('group:'..msg.to.id..':cmd', 'bot')
if cmd == 'moderator' and not is_mod(msg) or cmd == 'owner' and not is_owner(msg) then
 return 
 else
local uhash = 'user:'..msg.from.id
local user = redis:hgetall(uhash)
local um_hash = 'msgs:'..msg.from.id..':'..msg.to.id
user_info_msgs = tonumber(redis:get(um_hash) or 0)
  if matches[1] == 'me' or matches[1] == 'Me' then
    if is_sudo(msg) then
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `ғυll αdмιɴ🎭`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."️`"
    elseif is_admin(msg) then
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `вoт αdмιɴ🎭`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."`"
    elseif is_owner(msg) then
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `ɢroυp owɴer👤`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."`"
    elseif is_mod(msg) then
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `ɢroυp мoderαтor👮`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."`"
    else
      return "*υšeяɳαɱҽ:* @"..(check_markdown(msg.from.username) or 'No υʂҽɾɳαɱҽ').."\n*ιԃ:* `"..msg.from.id.."`\n*ɾαɳĸ:* `ɢroυp мeмвer😑`\n*тσтαʅ ɱҽαʂαɠҽʂ:* `"..user_info_msgs.."`"
    end
  end
end
end

return {
  patterns = {
    "^[!/#]([Mm]e)$",
	"^([Mm]e)$",
    },
  run = matador
}
end
--@MahDiRoO
--@MaTaDoRTeaM