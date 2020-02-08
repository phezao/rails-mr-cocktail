
puts 'fetching data from the web'
response = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
json = JSON.parse(response.body, symbolize_names: true)
puts 'creating ingredient'
json[:drinks].map do |ingredient|
  print '.'
  Ingredient.create!(name: ingredient.values.pop)
end
puts 'done'
