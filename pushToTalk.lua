local VoiceChat = game:GetService("VoiceChatInternal");
local UserInputService = game:GetService("UserInputService");

local toggleKey = "T"; --Edit this for a different toggle key (obv)
local enumKey = Enum.KeyCode[toggleKey];
local vc_enabled = true; --Don't touch this

UserInputService.InputBegan:Connect(function(inputObj)
    if inputObj.KeyCode ~= enumKey then return; end

    vc_enabled = (not vc_enabled);
    VoiceChat:PublishPause(vc_enabled);
end)

UserInputService.InputEnded:Connect(function(inputObj)
    if inputObj.KeyCode ~= enumKey then return; end

    vc_enabled = (not vc_enabled);
    VoiceChat:PublishPause(vc_enabled);
end)
