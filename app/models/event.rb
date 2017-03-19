class Event < ApplicationRecord
	has_many :event_datetimes, dependent: :destroy
	has_many :event_docs, dependent: :destroy
	has_many :event_infos, dependent: :destroy
	has_many :event_textbooks, dependent: :destroy

	has_one :event_long_desc, dependent: :destroy
	has_one :event_short_desc, dependent: :destroy
	has_one :event_schedule, dependent: :destroy
	
	has_and_belongs_to_many :members

	scope :in_wanted, -> { where("start_date > ?", Date.today) }
	scope :in_session, -> { where("(start_date <= ?) AND (end_date >= ?)", Date.today, Date.today) }
	scope :in_end, -> { where("end_date < ?", Date.today) }

	scope :sort_soon, -> { order(start_date: :asc) }
end
