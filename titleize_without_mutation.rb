def titleize(string)
  string.gsub(/\b(?!in)(?!the)(?!of)(?!and)(?!or)(?!from)[a-z]/){ $&.capitalize }
end
