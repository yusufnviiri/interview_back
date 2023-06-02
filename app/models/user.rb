class User < ApplicationRecord
    has_one :score
    def to_param
        email
      end
end
