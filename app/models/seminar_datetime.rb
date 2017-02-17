class SeminarDatetime < ApplicationRecord
	belongs_to :seminar
	has_many :seminar_docs
end
