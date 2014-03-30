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
  falcon_pack
  slave_pack
end
4.times do
	y_wing_pack
	b_wing_pack
  tie_pack
  advanced_pack
  lambda_pack
  imp_aces_pack
end
5.times do
	a_wing_pack
	bomber_pack
end
6.times do
end
7.times do
	interceptor_pack
end

puts "\nPilots:\n========\n\n"
puts Pilot.all_pilots
puts "\n"
