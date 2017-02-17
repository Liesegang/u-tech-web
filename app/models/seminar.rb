class Seminar < ApplicationRecord
	has_one :seminar_desc
	has_many :seminar_datetimes
	has_and_belongs_to_many :members
end
