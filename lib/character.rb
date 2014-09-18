class Character

  attr_reader :name, :health, :strength

  def initialize(name:, health:, strength:)
    @name = name
    @health = health
    @strength = strength
  end

  def alive?
    @health > 0
  end

  def dead?
    @health <= 0
  end

end

class Player < Character

  def initialize(name:, strength:)
    super(name: name,
          health: 100,
          strength: strength)
  end

end

class Enemy < Character

end