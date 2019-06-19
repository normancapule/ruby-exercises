require 'spec_helper'

RSpec.describe BlockGemExercise::Recipe do
  describe '.for' do
    let('expected_value') do
      "Hard Boiled Egg\n\nIngredients:\n1 Egg\n1L Water\n\nInstructions:\nPlace water in container\nPlace egg in water container\nBoil water\n"
    end

    before do
      described_class.describe_me do
        recipe 'Hard Boiled Egg' do
          ingredient '1 Egg'
          ingredient '1L Water'
          step 'Place water in container'
          step 'Place egg in water container'
          step 'Boil water'
        end
      end
    end

    it 'should list down a recipe' do
      expect(described_class.for('Hard Boiled Egg')).to eq expected_value
    end
  end
end
