def rebels;                   Faction.get(:rebels); end
def imperium;                 Faction.get(:imperium); end

def x_wing_craft;             Craft.get(:x_wing, rebels); end
def y_wing_craft;             Craft.get(:y_wing, rebels); end
def a_wing_craft;             Craft.get(:a_wing, rebels); end
def b_wing_craft;             Craft.get(:b_wing, rebels); end
def falcon_craft;             Craft.get(:falcon, rebels); end
def hwk_craft;                Craft.get(:hwk, rebels); end

def tie_craft;                Craft.get(:tie, imperium); end
def advanced_craft;           Craft.get(:advanced, imperium); end
def interceptor_craft(color); Craft.get(:interceptor, imperium, color); end
def bomber_craft;             Craft.get(:bomber, imperium); end
def slave_craft;              Craft.get(:slave, imperium); end
def lambda_craft;             Craft.get(:lambda, imperium); end

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
  Pilot.get(:x_rookie, x_wing_craft).add
  Pilot.get(:x_red, x_wing_craft).add
  Pilot.get(:x_garven, x_wing_craft).add
  Pilot.get(:x_wedge, x_wing_craft).add
  Upgrade.get(:proton, :torpedo).add
  Upgrade.get(:r5k6, :droid).add
  Upgrade.get(:r5, :droid).add
  Upgrade.get(:expert_handling, :elite).add
  Upgrade.get(:marksmanship, :elite).add
end

def tie_pack
  tie_craft.add
  Pilot.get(:tie_academy, tie_craft).add
  Pilot.get(:tie_obsidian, tie_craft).add
  Pilot.get(:tie_black, tie_craft).add
  Pilot.get(:tie_gundark, tie_craft).add
  Pilot.get(:tie_backstabber, tie_craft).add
  Pilot.get(:tie_howlrunner, tie_craft).add
  Upgrade.get(:determination, :elite).add
  Upgrade.get(:swarm_tactics, :elite).add
end
