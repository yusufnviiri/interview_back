class Score < ApplicationRecord
    belongs_to :reply
    belongs_to :user
end
