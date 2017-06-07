def integer_to(roman_mapping, n, result = "")
	puts result
	return result if n == 0
	roman_mapping.keys.each do |x|
		if n >=x
			result << roman_mapping[x]
			return integer_to(roman_mapping, n-x, result)
		end
	end

end

roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

integer_to(roman_mapping, 2434)


roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}

def integer_back(roman_mapping, roman, result = 0)
	puts result
	return result if roman.empty?
	roman_mapping.keys.each do |x|
		if roman.start_with?(x)
			result += roman_mapping[x]
			roman = roman.slice(x.length, roman.length)
			return integer_back(roman_mapping, roman, result)
		end
	end

end

integer_back(roman_mapping, "MMMCMIVI")