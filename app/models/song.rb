class Song < ActiveRecord::Base
	belongs_to :artist
	belongs_to :genre

	validates :name, presence: true
	validates :artist_id, presence: true
	validates :genre_id, presence: true

end
