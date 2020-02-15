local AddOnName, AddOn = ...

local searchBox = CreateFrame("EditBox", nil, nil, "BagSearchBoxTemplate")
searchBox:SetFrameStrata("MEDIUM")
searchBox:SetSize(140, 18)
searchBox:SetMaxLetters(15)

local _G = _G
local bags = ContainerFrame1.bags
hooksecurefunc(_G, "UpdateContainerFrameAnchors", function()
    local parent = _G[bags[#bags]]

    if not parent then return searchBox:Hide() end

    searchBox:SetParent(parent)
    searchBox:ClearAllPoints()
    searchBox:SetPoint("BOTTOMRIGHT", parent, "TOPRIGHT", -6, 0)
    searchBox:Show()
end)
