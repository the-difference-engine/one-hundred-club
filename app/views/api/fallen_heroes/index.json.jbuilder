
json.array!@fallen_heroes.each do |hero|
  json.id hero.id
  json.rank hero.rank
  json.first hero.first_name
  json.middle hero.middle_name
  json.last hero.last_name
  json.department hero.department
  json.date_deceased hero.date_deceased
  json.description hero.description
  json.image hero.image_url
end  