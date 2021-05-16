def week day
	days = {mon: "monday", tue: "tuesday", wed: "wednesday", thu: "thursday" ,fri: "friday", sat: "saturday", sun: "sunday"}
	if days[day.to_sym].nil?
		"nothing"
	else
		days[day.to_sym]
	end
end

puts week "wea"