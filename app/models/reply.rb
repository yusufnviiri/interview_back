class Reply < ApplicationRecord
    belongs_to :question
    has_one :score
    before_save :set_topic ,:set_score
    before_update :set_score



    def set_topic


        self.topic=self.question.body
    end
    def set_score
        if (self.selection== self.question.answer)  
            Score.create(reply_id:self.id,user_id:self.user_id)      
    
else
     return false
end
end
end