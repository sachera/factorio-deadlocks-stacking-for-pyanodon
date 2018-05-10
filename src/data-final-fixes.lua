local stackable_items = {
  pycoalprocessing = {
    { item = "coke", icon = nil, stage = 1 },
    { item = "fawogae", icon = nil, stage = 1 },
    { item = "iron-oxide", icon = nil, stage = 1 },
    { item = "ralesia", icon = nil, stage = 1 }
  },
  pyhightech = {
    { item = "clay", icon = nil, stage = 1 },
    { item = "electronic-circuit", icon = nil, stage = 2 },
    { item = "advanced-circuit", icon = nil, stage = 2 },
    { item = "processing-unit", icon = nil, stage = 3 }
  }
}

function create_all(stage_prefix, create_function)
  for mod,items in pairs(stackable_items) do
    if mods[mod] then
      for _,item in pairs(items) do
        if item.tech then
          create_function(item.item, item.icon, item.tech)
        else
          create_function(item.item, item.icon, stage_prefix..item.stage)
        end
      end
    end
  end
end

if deadlock_stacking then
  create_all("deadlock-stacking-", deadlock_stacking.create)
end

if deadlock_crating then
  create_all("deadlock-crating-", function(item, icon, tech) deadlock_crating.create(item, tech) end)
end
