class Vehicle < ApplicationRecord

	validates :color, presence: true
	validates :price, presence: true
	#there is no any method to find out child classes so thought to hardcode. tried using .subclasses but its worked on caches.
	class << self
		def childs
			%w(Car Motorcycle Bicycle)
		end
	end
end
