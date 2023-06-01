class AddUserReferenceToReplies < ActiveRecord::Migration[7.0]
  def change
    add_reference :replies, :user, null: true, foreign_key: true
  end
end
