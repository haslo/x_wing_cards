require 'yaml'
require './x-wing-classes'
require './x-wing-generators'
require './x-wing-i18n'

1.times do
end
2.times do
end
3.times do
  core_set
  x_wing_pack
end
4.times do
  tie_pack
end
5.times do
end
6.times do
end
7.times do
end

puts "\nPiloten:\n========\n\n"
puts Pilot.all_pilots
puts "\n"