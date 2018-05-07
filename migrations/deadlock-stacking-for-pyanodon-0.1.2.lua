function reapply_research(force, research) 
	if force.technologies[research] and force.technologies[research].researched then
		for _,effect in pairs(force.technologies[research].effects) do
			if effect.type == "unlock-recipe" then
				force.recipes[effect.recipe].enabled = true
			end
		end
		force.print({"info-message.dsb-tech-migration", force.technologies[research].localised_name},{r=1,g=0.75,b=0,a=1})
	end
end

for _, force in pairs(game.forces) do
	force.reset_technologies()
	force.reset_recipes()
	if deadlock_stacking then
	  reapply_research(force, "deadlock-stacking-1")
  end
  if deadlock_crating then
	  reapply_research(force, "deadlock-crating-1")
  end
end
