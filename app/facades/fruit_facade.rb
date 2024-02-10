class FruitFacade

  attr_reader :fruit_name

  def initialize(fruit_name)
    @fruit_name = fruit_name
  end

  def fruits
    service = FruityService.new
    json = service.fruit_by_name(@fruit_name)#service call
    @fruits = [Fruit.new(json.transform_keys(&:to_sym))]#poros call
  end

  def similar_fruits_by_sugar
    similar_fruits = []
    service = FruityService.new
    fruit = service.fruit_by_name(@fruit_name)
    fruit_sugar = fruit[:nutritions][:sugar]
    all_fruits = service.all_fruits
    all_fruits.each do |fruit_data|
      if (fruit_data[:nutritions][:sugar] - fruit_sugar).abs < 1.5
        similar_fruits << Fruit.new(fruit_data.transform_keys(&:to_sym))
      end
    end
    similar_fruits
  end
end
