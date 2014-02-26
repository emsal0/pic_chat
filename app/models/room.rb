class Room < ActiveRecord::Base
	validates :name, uniqueness: true, prescence :true
	has_many :doodles
end
