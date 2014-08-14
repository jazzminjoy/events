require 'spec_helper'

describe "Navigating events" do 
	it "allows navigation from the show 1 event detail page to the index list all events page" do
		event = Event.create(event_attributes)
		visit event_url(event)
		click_link 'Show all events'
		expect(current_path).to eq(events_path)
	end

	it "allows navigation from the listing page to the detail page" do
		event = Event.create(event_attributes)
		visit events_url
		click_link 'Show'
		expect(current_path).to eq(event_path(event))
	end
end