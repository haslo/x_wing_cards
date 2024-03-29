class XWingSingleton
  def initialize(name)
    @name = name
  end
  def add(number = 1)
    @count ||= 0
    @count += number
  end
  def name
    @name
  end
  def count
    @count
  end
  def self.get(*keys)
    @@singletons ||= {}
    @@singletons[self.name] ||= {}
    @@singletons[self.name][keys] ||= new(*(keys.flatten))
  end
end

class Faction < XWingSingleton
  def to_s
    translate("en.factions.#{@name}")
  end
end

class Craft < XWingSingleton
  def initialize(name, faction, color = :default)
    super(name)
    @faction = faction
    @color = color
  end
  def self.get(name, craft, color = :default)
    super([name, craft, color])
  end
  attr_reader :faction, :color
  def to_s
    "#{@faction} - #{translate("en.crafts.#{@name}")}: #{@count}"
  end
end

class Pilot < XWingSingleton
  def initialize(name, craft)
    super(name)
    @craft = craft
  end
  def self.get(name, craft)
    super([name, craft])
  end
  attr_reader :craft
  def to_s
    "#{translate("en.crafts.#{@craft.name}")} - #{translate("en.pilots.#{@craft.name}.#{@name}")}: #{@count}"
  end
  def self.all_pilots
    @@singletons[self.name].map{|_,v|v}.sort{|a,b|[a.craft.faction.name,a.craft.name,b.count]<=>[b.craft.faction.name,b.craft.name,a.count]}.map{|pilot|
      pilot.to_s
    }.join("\n")
  end
end

class Upgrade < XWingSingleton
  def initialize(name, type)
    super(name)
    @type = type
  end
  def self.get(name, type)
    super([name, type])
  end
  attr_reader :type
  def to_s
    "#{translate("en.upgrade_types.#{@type}")} - #{translate("en.upgrades.#{@type}.#{@name}")}: #{@count}"
  end
  def self.all_upgrades
    @@singletons[self.name].map{|_,v|v}.sort{|a,b|[a.type,b.count]<=>[b.type,a.count]}.map{|upgrade|
      upgrade.to_s
    }.join("\n")
  end
end
