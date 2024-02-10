class Fruit

  attr_reader :name, :id, :family, :order, :genus, :nutritions

  def initialize(attributes)
    @name = attributes[:name]
    @id = attributes[:id]
    @family = attributes[:family]
    @order = attributes[:order]
    @genus = attributes[:genus]
    @nutritions = attributes[:nutritions]
  end
end
