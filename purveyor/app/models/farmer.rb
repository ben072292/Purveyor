class Farmer < ActiveRecord::Base
validates :name, presence: true,
                 length: {minimum: 5}

validates :nameofbusiness, presence: true,
                 length: {minimum: 5}

validates :contactnumber, presence: true,
                 length: {minimum: 10}

validates :contactemail, presence: true,
                 length: {minimum: 5}

validates :bio, presence: true,
                 length: {minimum: 5}

validates :location, presence: true,
                 length: {minimum: 5}
end
