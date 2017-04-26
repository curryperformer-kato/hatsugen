class Kyoshu < ActiveRecord::Base
    validates :content, presence: true, length: { in: 1..140 }
end