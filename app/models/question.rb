class Question < ApplicationRecord
    has_one :reply, dependent: :destroy
end
