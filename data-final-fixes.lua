if deadlock_stacking then
  if mods["pycoalprocessing"] then
    deadlock_stacking.create("coke", nil, "deadlock-stacking-1")
    deadlock_stacking.create("fawogae", nil, "deadlock-stacking-1")
    deadlock_stacking.create("iron-oxide", nil, "deadlock-stacking-1")
    deadlock_stacking.create("ralesia", nil, "deadlock-stacking-1")
  end
  if mods["pyhightech"] then
    deadlock_stacking.create("clay", nil, "deadlock-stacking-1")
  end
end

if deadlock_crating then
  if mods["pycoalprocessing"] then
    deadlock_crating.create("coke", "deadlock-stacking-1")
    deadlock_crating.create("fawogae", "deadlock-stacking-1")
    deadlock_crating.create("iron-oxide", "deadlock-stacking-1")
    deadlock_crating.create("ralesia", nil, "deadlock-stacking-1")
  end
  if mods["pyhightech"] then
    deadlock_crating.create("clay", "deadlock-stacking-1")
  end
end
