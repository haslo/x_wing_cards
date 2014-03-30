def rebels;                              Faction.get(:rebels); end
def imperium;                            Faction.get(:imperium); end

def x_wing_craft;                        Craft.get(:x_wing, rebels); end
def y_wing_craft;                        Craft.get(:y_wing, rebels); end
def a_wing_craft;                        Craft.get(:a_wing, rebels); end
def b_wing_craft;                        Craft.get(:b_wing, rebels); end
def falcon_craft;                        Craft.get(:falcon, rebels); end
def hwk_craft;                           Craft.get(:hwk, rebels); end

def tie_craft;                           Craft.get(:tie, imperium); end
def advanced_craft;                      Craft.get(:advanced, imperium); end
def interceptor_craft(color = :default); Craft.get(:interceptor, imperium, color); end
def bomber_craft;                        Craft.get(:bomber, imperium); end
def slave_craft;                         Craft.get(:slave, imperium); end
def lambda_craft;                        Craft.get(:lambda, imperium); end

def core_set
  x_wing_craft.add
  tie_craft.add(2)
  Pilot.get(:x_rookie, x_wing_craft).add
  Pilot.get(:x_red, x_wing_craft).add
  Pilot.get(:x_luke, x_wing_craft).add
  Pilot.get(:x_biggs, x_wing_craft).add
  Pilot.get(:tie_academy, tie_craft).add(2)
  Pilot.get(:tie_obsidian, tie_craft).add(2)
  Pilot.get(:tie_black, tie_craft).add(2)
  Pilot.get(:tie_mauler, tie_craft).add
  Pilot.get(:tie_curse, tie_craft).add
  Pilot.get(:tie_nightbeast, tie_craft).add
  Upgrade.get(:proton, :torpedo).add
  Upgrade.get(:determination, :elite).add
  Upgrade.get(:r2d2, :droid).add
  Upgrade.get(:r2f2, :droid).add
end

def x_wing_pack
  x_wing_craft.add
  Pilot.get(:rookie, x_wing_craft).add
  Pilot.get(:red, x_wing_craft).add
  Pilot.get(:garven, x_wing_craft).add
  Pilot.get(:wedge, x_wing_craft).add
  Upgrade.get(:proton, :torpedo).add
  Upgrade.get(:r5k6, :droid).add
  Upgrade.get(:r5, :droid).add
  Upgrade.get(:expert_handling, :elite).add
  Upgrade.get(:marksmanship, :elite).add
end

def y_wing_pack
  y_wing_craft.add
  Pilot.get(:gold, y_wing_craft).add
  Pilot.get(:gray, y_wing_craft).add
  Pilot.get(:dutch, y_wing_craft).add
  Pilot.get(:horton, y_wing_craft).add
  Upgrade.get(:proton, :torpedo).add
  Upgrade.get(:proton, :torpedo).add
  Upgrade.get(:ion, :turret).add
  Upgrade.get(:r5d8, :droid).add
  Upgrade.get(:r2, :droid).add
end

def a_wing_pack
  a_wing_craft.add
  Pilot.get(:prototype, a_wing_craft).add
  Pilot.get(:green, a_wing_craft).add
  Pilot.get(:arvel, a_wing_craft).add
  Pilot.get(:tycho, a_wing_craft).add
  Upgrade.get(:concussion, :missile).add
  Upgrade.get(:cluster, :missile).add
  Upgrade.get(:homing, :missile).add
  Upgrade.get(:deadeye, :elite).add
  Upgrade.get(:ptl, :elite).add
end

def b_wing_pack
  b_wing_craft.add
  Pilot.get(:blue, b_wing_craft).add
  Pilot.get(:dagger, b_wing_craft).add
  Pilot.get(:ibitsam, b_wing_craft).add
  Pilot.get(:numb, b_wing_craft).add
  Upgrade.get(:proton, :torpedo).add
  Upgrade.get(:advanced_proton, :torpedo).add
  Upgrade.get(:fire_control, :sensors).add
  Upgrade.get(:ion, :cannon).add
  Upgrade.get(:autoblaster, :cannon).add
end

def falcon_pack
  falcon_craft.add
  Pilot.get(:smuggler, falcon_craft).add
  Pilot.get(:chewbacca, falcon_craft).add
  Pilot.get(:lando, falcon_craft).add
  Pilot.get(:han, falcon_craft).add
  Upgrade.get(:chewbacca, :crew).add
  Upgrade.get(:luke, :crew).add
  Upgrade.get(:nien_nunb, :crew).add
  Upgrade.get(:swarm_tactics, :crew).add
  Upgrade.get(:draw_fire, :elite).add
  Upgrade.get(:elusiveness, :elite).add
  Upgrade.get(:veteran_instincts, :elite).add
  Upgrade.get(:concussion, :missile).add
  Upgrade.get(:assault, :missile).add
  Upgrade.get(:engine_upgrade, :modification).add
  Upgrade.get(:engine_upgrade, :modification).add
  Upgrade.get(:shield_upgrade, :modification).add
  Upgrade.get(:shield_upgrade, :modification).add
  Upgrade.get(:falcon, :title).add
end

def tie_pack
  tie_craft.add
  Pilot.get(:academy, tie_craft).add
  Pilot.get(:obsidian, tie_craft).add
  Pilot.get(:black, tie_craft).add
  Pilot.get(:gundark, tie_craft).add
  Pilot.get(:backstabber, tie_craft).add
  Pilot.get(:howlrunner, tie_craft).add
  Upgrade.get(:determination, :elite).add
  Upgrade.get(:swarm_tactics, :elite).add
end

def advanced_pack
  advanced_craft.add
  Pilot.get(:tempest, advanced_craft).add
  Pilot.get(:storm, advanced_craft).add
  Pilot.get(:steele, advanced_craft).add
  Pilot.get(:vader, advanced_craft).add
  Upgrade.get(:concussion, :missile).add
  Upgrade.get(:cluster, :missile).add
  Upgrade.get(:squad_leader, :elite).add
  Upgrade.get(:swarm_tactics, :elite).add
  Upgrade.get(:expert_handling, :elite).add
end

def interceptor_pack
  interceptor_craft(:default).add
  Pilot.get(:alpha, interceptor_craft).add
  Pilot.get(:avenger, interceptor_craft).add
  Pilot.get(:saber, interceptor_craft).add
  Pilot.get(:fels_wrath, interceptor_craft).add
  Pilot.get(:turr, interceptor_craft).add
  Pilot.get(:soontir, interceptor_craft).add
  Upgrade.get(:daredevil, :elite).add
  Upgrade.get(:elusiveness, :elite).add
end

def bomber_pack
  bomber_craft.add
  Pilot.get(:scimitar, bomber_craft).add
  Pilot.get(:gamma, bomber_craft).add
  Pilot.get(:jonus, bomber_craft).add
  Pilot.get(:rhymer, bomber_craft).add
  Upgrade.get(:advanced_proton, :torpedo).add
  Upgrade.get(:assault, :missile).add
  Upgrade.get(:proton, :bomb).add
  Upgrade.get(:seismic, :bomb).add
  Upgrade.get(:adrenaline, :elite).add
end

def slave_pack
  slave_craft.add
  Pilot.get(:bounty_hunter, slave_craft).add
  Pilot.get(:krassis, slave_craft).add
  Pilot.get(:kath, slave_craft).add
  Pilot.get(:boba, slave_craft).add
  Upgrade.get(:gunner, :crew).add
  Upgrade.get(:mercenary_copilot, :crew).add
  Upgrade.get(:expose, :elite).add
  Upgrade.get(:veteran_instincts, :elite).add
  Upgrade.get(:assault, :missile).add
  Upgrade.get(:homing, :missile).add
  Upgrade.get(:proximity, :bomb).add
  Upgrade.get(:seismic, :bomb).add
  Upgrade.get(:stealth, :modification).add
  Upgrade.get(:stealth, :modification).add
  Upgrade.get(:slave_i, :title).add
end

def lambda_pack
  lambda_craft.add
  Pilot.get(:omicron, lambda_craft).add
  Pilot.get(:yorr, lambda_craft).add
  Pilot.get(:jendon, lambda_craft).add
  Pilot.get(:kagi, lambda_craft).add
  Upgrade.get(:hlc, :cannon).add
  Upgrade.get(:advanced_sensors, :sensors).add
  Upgrade.get(:sensor_jammer, :sensors).add
  Upgrade.get(:vader, :crew).add
  Upgrade.get(:captive, :crew).add
  Upgrade.get(:weapons_engineer, :crew).add
  Upgrade.get(:navigator, :crew).add
  Upgrade.get(:flight_instructor, :crew).add
  Upgrade.get(:intelligence_agent, :crew).add
  Upgrade.get(:apl, :modification).add
  Upgrade.get(:apl, :modification).add
  Upgrade.get(:st_321, :title).add
end

def imp_aces_pack
  interceptor_craft(:red).add
  interceptor_craft(:stripe).add
  Pilot.get(:saber, interceptor_craft).add
  Pilot.get(:saber, interceptor_craft).add
  Pilot.get(:royal_guard, interceptor_craft).add
  Pilot.get(:royal_guard, interceptor_craft).add
  Pilot.get(:lorrir, interceptor_craft).add
  Pilot.get(:kanos, interceptor_craft).add
  Pilot.get(:cowall, interceptor_craft).add
  Pilot.get(:cornor, interceptor_craft).add
  Upgrade.get(:ptl, :elite).add
  Upgrade.get(:ptl, :elite).add
  Upgrade.get(:opportunist, :elite).add
  Upgrade.get(:opportunist, :elite).add
  Upgrade.get(:shield_upgrade, :modification).add
  Upgrade.get(:shield_upgrade, :modification).add
  Upgrade.get(:hull_upgrade, :modification).add
  Upgrade.get(:hull_upgrade, :modification).add
  Upgrade.get(:targeting_computer, :modification).add
  Upgrade.get(:targeting_computer, :modification).add
  Upgrade.get(:royal_guard, :title).add
  Upgrade.get(:royal_guard, :title).add
end
