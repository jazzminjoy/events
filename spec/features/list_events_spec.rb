require "spec_helper"

describe "Viewing the list of events" do |variable|
	it "shows the event" do
		visit events_url
		expect(page).to have_text("Events")
		expect(page).to have_text("Bug Smash")
	end
end


		