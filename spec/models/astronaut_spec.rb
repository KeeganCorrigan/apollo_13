require 'rails_helper'

describe Astronaut, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}
    it {should validate_presence_of(:job)}
  end
  describe "class methods" do
    it ".average_age should average age of astronauts" do
      astronaut_1 = Astronaut.create!(name: "ioajsd", age: 30, job: "asd")
      astronaut_2 = Astronaut.create!(name: "iasdsa", age: 50, job: "oijasdoij")

      expected = 40

      expect(Astronaut.average_age).to eq("#{expected}")
    end
  end
end

# describe "relationships" do
#   it {should have_many(:space_missions)}
# end
