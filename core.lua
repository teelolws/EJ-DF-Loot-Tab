local l = CreateFrame("Frame")
l:RegisterEvent("ADDON_LOADED")
l:SetScript("OnEvent", function(self, event, arg1)
    if arg1 == "Blizzard_EncounterJournal" then
        function EncounterJournal_CheckAndDisplayLootTab()
            if (EJ_GetCurrentTier()==9) or (EJ_GetCurrentTier()==10) then 
                PanelTemplates_ShowTab(EncounterJournal, EncounterJournal.LootJournalTab:GetID()) 
            else 
                PanelTemplates_HideTab(EncounterJournal, EncounterJournal.LootJournalTab:GetID())
            end 
        end
        
        EncounterJournalLootJournalTab:HookScript("OnClick", 
            function() 
                EncounterJournal_SetLootJournalView(LOOT_JOURNAL_ITEM_SETS) 
            end
        )
    end
end)