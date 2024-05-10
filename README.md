--# atom
--Roblox-Atom notification-ui

--Atom loadstring : loadstring(game:HttpGet('https://raw.githubusercontent.com/JbefTeam/atom/main/source.lua'))()

--How to send normal only-text non-interactive boring not skibidi notifications :

SendNotificationText(stringhere)

--How to send button interactive not boring skibidi notifications : 

SendNotificationButton(message,buttontext,function()
  --button pressed code comes here
end)

How to send input box very cool skibidi notifications : 

SendNotificationInput(message,buttontext,function()
  --the inputbox text is the function *value*
end)
