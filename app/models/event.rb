class Event < ApplicationRecord
	has_many :event_datetimes
	has_many :event_docs
	has_one :event_long_desc
	has_one :event_short_desc
	has_and_belongs_to_many :members
end
