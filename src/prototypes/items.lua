local shared = require("migrations.shared")

function create_all(stackable_items, stage_prefix, create_function)
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
  create_all(shared.STACKABLES, shared.STACKING_PREFIX, deadlock_stacking.create)
end

if deadlock_crating then
  create_all(shared.STACKABLES, shared.CRATING_PREFIX, function(item, icon, tech) deadlock_crating.create(item, tech) end)
end
