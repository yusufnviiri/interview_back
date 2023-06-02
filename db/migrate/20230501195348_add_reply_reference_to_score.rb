class AddReplyReferenceToScore < ActiveRecord::Migration[7.0]
  def change
    add_reference :scores, :reply, null: false, foreign_key: true
  end
end
