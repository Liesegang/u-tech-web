class EventInfo < ApplicationRecord
	belongs_to :event


	scope :sort_old, -> { order(due: :desc) }
	scope :sort_new, -> { order(due: :asc) }
	scope :now, -> { where("due >= ?", Time.now) }
	scope :old, -> { where("due < ?", Time.now) }
end
