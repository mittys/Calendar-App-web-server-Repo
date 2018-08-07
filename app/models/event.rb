class Event < ApplicationRecord
    validates :definition, presence: true,
                    length: { minimum: 5 }
	def self.search(search)
		if search
			where(["definition LIKE ?", "%#{search}%"])
		else
			all
		end
	end

end
# TODO: date için gün/ay/yıl gibi bir format kontrolü yapılacak
