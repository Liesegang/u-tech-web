class Event < ApplicationRecord
	has_many :event_datetimes
	has_many :event_docs
	has_many :event_infos
	has_one :event_long_desc
	has_one :event_short_desc
	has_one :event_schedule
	has_and_belongs_to_many :members

	scope :in_wanted, -> { where("start_date > ?", Date.today) }
	scope :in_session, -> { where("(start_date <= ?) AND (end_date >= ?)", Date.today, Date.tiday) }
	scope :in_end, -> { where("end_date < ?", Date.today) }

	scope :sort_soon, ->　{ order(start_date: :asc) }
end
