class Artist < ActiveRecord::Base
has_many :songs
has_many :genres, through: :songs

	validates :name, presence: true
	validates :bio, presence: true
	

end
