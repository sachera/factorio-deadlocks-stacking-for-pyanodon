local shared = require("migrations.shared")

function create_all(stackable_items, stage_prefix, create_function)
  for mod,items in pairs(stackable_items) do
    if mods[mod] then
      for _,item in pairs(items) do
        local icon = item.icon
        if icon == nil then
          icon = "__deadlocks-stacking-for-pyanadon__/graphics/icons/stacked-" .. item.item .. ".png"
        end
        if item.tech then
          create_function(item.item, item.icon, item.tech, 32)
        else
          create_function(item.item, item.icon, stage_prefix..item.stage, 32)
        end
      end
    end
  end
end

if deadlock_stacking then
  create_all(shared.STACKABLES, shared.STACKING_PREFIX, deadlock_stacking.create)
end
