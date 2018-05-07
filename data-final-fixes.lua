if deadlock_stacking then
  if mods["pycoalprocessing"] then
    deadlock_stacking.create("coke", nil, "deadlock-stacking-1")
  end
end

if deadlock_crating then
  if mods["pycoalprocessing"] then
    deadlock_crating.create("coke", "deadlock-stacking-1")
  end
end
