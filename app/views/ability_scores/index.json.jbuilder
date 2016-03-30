json.array!(@ability_scores) do |ability_score|
  json.extract! ability_score, :id, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
  json.url ability_score_url(ability_score, format: :json)
end
