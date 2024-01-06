local networkService = game:GetService("ReplicatedStorage"):WaitForChild("Network")
local merchantRequest = networkService:WaitForChild("Merchant_RequestPurchase")
local claimGift = networkService:WaitForChild("Redeem Free Gift")
local player = game:GetService("Players").LocalPlayer

_G.autoBuyRegularMerchant = false
_G.autoBuyAdvancedMerchant = false
_G.autoBuyGardenMerchant = false
_G.autoBuySnowMerchant = false
_G.autoClaimGifts = false
_G.autoClaimSmallDiamonds = false

local function GetPlayer()
    playerHumanoid = player.Character
    if playerHumanoid then
        RootPart = playerHumanoid:FindFirstChild("HumanoidRootPart")
	return RootPart
    elseif playerHumanoid == nil then
	return nil
    end
end

local function AutoBuyRegularMerchant()
    while _G.autoBuyRegularMerchant do
        RootPart = GetPlayer()
        if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(368.82782, 17.6504326, 543.36051)
            wait(0.1)
            for i = 1,6 do
                for j = 1,10 do
                    merchantRequest:InvokeServer("RegularMerchant", i)
                    wait(0.001)
                end
                wait(0.2)                    
            end
            wait(0.1)
            RootPart.CFrame = CFrame.new(CFramePart)
        end
    wait(800)
    end
end

local function AutoBuyAdvancedMerchant()
    while _G.autoBuyAdvancedMerchant do
        RootPart = GetPlayer()
        if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(818.6481323, 17.66573, 1539.2429199)
            wait(0.1)
            for i = 1,6 do
                for j = 1,10 do
                    merchantRequest:InvokeServer("AdvancedMerchant", i)
                    wait(0.001)
                end
                wait(0.2)                    
            end
            wait(0.1)
            RootPart.CFrame = CFrame.new(CFramePart)
        end
    wait(950)
    end
end

local function AutoBuyGardenMerchant()
    while _G.autoBuyGardenMerchant do
        RootPart = GetPlayer()
        if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(259.746124267, 17.6442584, 2073.28051757)
            wait(0.1)
            for i = 1,6 do
                for j = 1,10 do
                    merchantRequest:InvokeServer("GardenMerchant", i)
                    wait(0.001)
                end
                wait(0.2)                    
            end
            wait(0.1)
            RootPart.CFrame = CFrame.new(CFramePart)
        end
    wait(1000)
    end
end

local function AutoBuySnowMerchant()
    while _G.autoBuySnowMerchant do
        RootPart = GetPlayer()
        if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(1258.35363769531, 17.64980506, 2649.2119140625)
            wait(0.1)
            for i = 2,6 do
                for j = 1,10 do
                        merchantRequest:InvokeServer("SnowMerchant", i)
                    wait(0.001)
                end
                wait(0.2)                    
            end
            wait(0.1)
            RootPart.CFrame = CFrame.new(CFramePart)
        end
    wait(1100)
    end
end

local function AutoClaimGifts()
    for i = 1, 12 do
        claimGift:InvokeServer(i)
        wait(0.1)
    end
end

local function AutoClaimSmallDiamonds()
    while _G.autoClaimSmallDiamonds do
        RootPart = GetPlayer()
	if RootPart then
            CFramePart = RootPart.Position
            RootPart.CFrame = CFrame.new(561.092224, 17.6505299, -148.544724)
            wait(0.5)
	    RootPart.CFrame = CFrame.new(CFramePart)
	end
    wait(900)
    end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Pet Simulator 99", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest", IntroEnabled = true, IntroText = "Hi! It's best script for Pet Sim 99!"})

OrionLib:Init()