function modIngredients(ingredients)
    local multipliers = { 1, 2, 4, 8 }
    local total = #ingredients
    for i = 1, total do
        local pack = ingredients[i][1]
	local count = ingredients[i][2]
	if (pack == "science-pack-1")
	then
	    ingredients[i][2] = count*multipliers[total]
	elseif (pack == "science-pack-2")
	then
	    if ((total-1) < 1) then
			--ingredients[i][2] = 1000
	    else
			ingredients[i][2] = count*multipliers[total-1]
	    end
	elseif (pack == "science-pack-3")
	then
	    if ((total-2) < 1) then
			--ingredients[i][2] = 1000
	    else
			ingredients[i][2] = count*multipliers[total-2]
	    end
	elseif (pack == "alien-science-pack")
	then
	    if ((total-3) < 1) then
			--ingredients[i][2] = 1000
	    else
			ingredients[i][2] = count*multipliers[total-3]
	    end
	end
    end
end

for k,v in pairs(data.raw.technology) do
	modIngredients(v.unit.ingredients)
end
