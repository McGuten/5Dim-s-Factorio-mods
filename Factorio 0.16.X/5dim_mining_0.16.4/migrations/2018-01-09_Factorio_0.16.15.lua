game.reload_script()

for index, force in pairs(game.forces) do
  local technologies = force.technologies;
  local recipes = force.recipes;

  if technologies["advanced-oil-processing"].researched then
    recipes["5d-pumpjack-2"].enabled = true
  end
end

