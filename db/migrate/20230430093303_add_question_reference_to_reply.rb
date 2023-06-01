class AddQuestionReferenceToReply < ActiveRecord::Migration[7.0]
  def change
    add_reference :replies, :question, null: false, foreign_key: true
  end
end
