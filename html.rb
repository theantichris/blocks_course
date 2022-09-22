def tag(tag_name)
  print "<#{tag_name}>"
  print yield
  print "</#{tag_name}>"
end

tag(:h1) { "Breaking News!" }
tag(:h2) { "Massive Ruby Discovered" }

tag(:ul) do
  tag(:li) { "It sparkles!" }
  tag(:li) { "It sparkles!" }
  tag(:li) { "It sparkles!" }
end
