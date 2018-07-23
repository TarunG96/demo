class User < ApplicationRecord
    validates_presence_of :email, :pass
end
