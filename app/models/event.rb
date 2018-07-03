class Event < ApplicationRecord
    validates :definition, presence: true,
                    length: { minimum: 5 }
end
# TODO: date için gün/ay/yıl gibi bir format kontrolü yapılacak
