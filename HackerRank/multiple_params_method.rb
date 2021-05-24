def full_name first, *rest
  rest.inject(first){|name, other_name| name + " " + other_name }
end

#Write a method named full_name that generates the full names of people given their first name, followed by some variable number of middle names, followed by their last name.