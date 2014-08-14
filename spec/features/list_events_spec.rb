require "spec_helper"

describe "Viewing the list of events" do |variable|
	it "shows the event" do
		event1 = Event.create(event_attributes)

		event2 = Event.create(name: "Hackathon",
			location: "Austin",
			price: 15.00,
			description: "Hunker down at the Hackathon",
			starts_at: 15.days.from_now)

		event3 = Event.create(name: "Kata Camp",
			location: "Dallas",
			price: 75.00,
			description: "Practice your craft kata style",
			starts_at: 30.days.from_now)

		visit events_url

		expect(page).to have_text("3 Events")
		expect(page).to have_text(event1.name)
		expect(page).to have_text(event2.name)
		expect(page).to have_text(event3.name)

		expect(page).to have_text(event1.location)
		expect(page).to have_text("$10.00")
		expect(page).to have_text(event1.description[0..9])

	end
end
		