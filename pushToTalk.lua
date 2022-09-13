local VoiceChat = game:GetService("VoiceChatInternal");
local UserInputService = game:GetService("UserInputService");

local toggleKey = "T";
local enumKey = Enum.KeyCode[toggleKey];
local vc_enabled = true; --Don't touch this

local function pushToTalk(inputObj)
    if inputObj.KeyCode ~= enumKey then return; end

    vc_enabled = (not vc_enabled);
    VoiceChat:PublishPause(vc_enabled);
end

UserInputService.InputBegan:Connect(pushToTalk);
UserInputService.InputEnded:Connect(pushToTalk);
