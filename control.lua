script.on_event('individual-craft-5', function(event)
    if event.selected_prototype then
        if event.selected_prototype.base_type == "recipe" then
            local plr = game.players[event.player_index]
            for _ =1, 5, 1 do
                plr.begin_crafting{count=1, recipe=event.selected_prototype.name, silent=true}
            end
        end
    end
end)