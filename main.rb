# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

puts "All candidates:"
pp @candidates

puts # blank line separator

## Your test code can go here

# Test 1: Experienced candidates
puts "Experienced Candidates - true or false:"
puts "Is candidate number 1 experienced? #{experienced?(@candidates[0])}"
puts

# Test 2: Finding by :id
id_to_find = 5
found_candidate = find(id_to_find)
puts "Candidate with ID #{id_to_find} found:"
pp found_candidate # pp prints prettily (or something? it makes it nicer to look at!)

puts

#Test 3: Finding any qualified candidates
qualified = qualified_candidates(@candidates)
if qualified.any?
  puts "Qualified Candidates:"
  pp qualified
else
  puts "No one can cut it!"
end
puts

#Test 4: Ordering candidates by qualifications
ordered_candidates = ordered_by_qualifications(@candidates)
if ordered_candidates.any?
  puts "Ordered Candidates:"
  pp ordered_candidates
else
  puts "Should have called Charli!"
end
