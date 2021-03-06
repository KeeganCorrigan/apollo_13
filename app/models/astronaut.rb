class Astronaut < ApplicationRecord

  validates_presence_of :name, :age, :job

  def self.average_age
    average(:age).to_i.to_s
  end
end
