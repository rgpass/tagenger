module ApplicationHelper

	# Return the full title on a per-page basis
	def full_title(page_title)
		base_title = "Tagenger"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end

	def state_arr
		states = [
			["AK", "Alaska"], 
      ["AL", "Alabama"], 
      ["AR", "Arkansas"], 
      ["AS", "American Samoa"], 
      ["AZ", "Arizona"], 
      ["CA", "California"], 
      ["CO", "Colorado"], 
      ["CT", "Connecticut"], 
      ["DC", "District of Columbia"], 
      ["DE", "Delaware"], 
      ["FL", "Florida"], 
      ["GA", "Georgia"], 
      ["GU", "Guam"], 
      ["HI", "Hawaii"], 
      ["IA", "Iowa"], 
      ["ID", "Idaho"], 
      ["IL", "Illinois"], 
      ["IN", "Indiana"], 
      ["KS", "Kansas"], 
      ["KY", "Kentucky"], 
      ["LA", "Louisiana"], 
      ["MA", "Massachusetts"], 
      ["MD", "Maryland"], 
      ["ME", "Maine"], 
      ["MI", "Michigan"], 
      ["MN", "Minnesota"], 
      ["MO", "Missouri"], 
      ["MS", "Mississippi"], 
      ["MT", "Montana"], 
      ["NC", "North Carolina"], 
      ["ND", "North Dakota"], 
      ["NE", "Nebraska"], 
      ["NH", "New Hampshire"], 
      ["NJ", "New Jersey"], 
      ["NM", "New Mexico"], 
      ["NV", "Nevada"], 
      ["NY", "New York"], 
      ["OH", "Ohio"], 
      ["OK", "Oklahoma"], 
      ["OR", "Oregon"], 
      ["PA", "Pennsylvania"], 
      ["PR", "Puerto Rico"], 
      ["RI", "Rhode Island"], 
      ["SC", "South Carolina"], 
      ["SD", "South Dakota"], 
      ["TN", "Tennessee"], 
      ["TX", "Texas"], 
      ["UT", "Utah"], 
      ["VA", "Virginia"], 
      ["VI", "Virgin Islands"], 
      ["VT", "Vermont"], 
      ["WA", "Washington"], 
      ["WI", "Wisconsin"], 
      ["WV", "West Virginia"], 
      ["WY", "Wyoming"]
    ]
    states.each {|state| state[0],state[1] = state[1],state[0]}
    return states
	end
end
