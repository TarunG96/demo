class User < ApplicationRecord
    validates_presence_of :email, :pass
    has_one :buyer ,class_name: "User"
end
