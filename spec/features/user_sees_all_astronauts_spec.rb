require 'rails_helper'

describe "index" do
  it "user can see all songs" do
    astronaut_1 = Astronaut.create!(name: "ioajsd", age: 34, job: "asd")
    astronaut_2 = Astronaut.create!(name: "iasdsa", age: 334, job: "oijasdoij")

    visit '/astronauts'

    expect(page).to have_content("All Astronauts")
    expect(page).to have_content("Name: #{astronaut_1.name}")
    expect(page).to have_content("Age: #{astronaut_2.age}")
    expect(page).to have_content("Job: #{astronaut_1.job}")
  end
  it "can see astronaut average age" do
    astronaut_1 = Astronaut.create!(name: "ioajsd", age: 30, job: "asd")
    astronaut_2 = Astronaut.create!(name: "iasdsa", age: 50, job: "oijasdoij")

    expected = "40"

    visit '/astronauts'

    expect(page).to have_content(expected)
  end
end
