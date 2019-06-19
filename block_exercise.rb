class Object
  def self.describe
    @@recipes = {}
    yield if block_given?
  end

  def recipe(recipe)
    @current_recipe = recipe
    @@recipes[recipe] ||= { ingredients: [], steps: [] }
    yield if block_given?
  end

  def ingredient(ingredient)
    @@recipes[@current_recipe][:ingredients] << ingredient
  end

  def step(step)
    @@recipes[@current_recipe][:steps] << step
  end

  def self.for(recipe)
    raise unless @@recipes[recipe]

    output = ""
    output << "#{recipe}\n"
    output << "\n"
    output << "Ingredients:\n"
    @@recipes[recipe][:ingredients].each do |ingredient|
      output << "#{ingredient}\n"
    end
    output << "\n"
    output << "Instructions:\n"
    @@recipes[recipe][:steps].each do |step|
      output << "#{step}\n"
    end
    output
  end
end

class Recipe; end

Recipe.describe do
  recipe "Hard Boiled Egg" do
    ingredient "1 Egg"
    ingredient "1L Water"
    step "Place water in container"
    step "Place egg in water container"
    step "Boil water"
  end

  recipe "Bacon Surprise" do
    ingredient "3 strips of bacon"
    ingredient "1 ampalaya"
    ingredient "1 egg"
    ingredient "1 chili pepper"
    step "Mince egg"
    step "Cube ampalaya"
    step "Strip bacon"
    step "Sprinkle pepper"
    step "Call 911"
  end
end

puts Recipe.for("Hard Boiled Egg")
