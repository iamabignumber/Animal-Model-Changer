local animalmodelchanger = menu.add_feature("Animal Script", "parent")

unmark = menu.add_feature("Unmark", "action", animalmodelchanger.id, function(f)
    if f.on then
        for pid = 0, 31 do
            player.unset_player_as_modder(pid, -1)
        end
    end
end)

changemodel = menu.add_feature("Change Lobby Into Animals", "action", animalmodelchanger.id, function(f)
    for pid = 0, 31 do
        script.trigger_script_event(-1178972880 , pid, {pid, 8, math.random(0, 1000), 1, 1, 1})
    end
end)
