json.array! @events.each do |event|
	json.allDay false
	json.title event.title
	json.id event.id
	json.start event.datetime
end