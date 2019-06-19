module BlockGemExercise
  class Recipe
    def self.describe_me(&blk)
      @@recipes = {}

      Recipe.new.instance_eval(&blk) if block_given?
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
end
