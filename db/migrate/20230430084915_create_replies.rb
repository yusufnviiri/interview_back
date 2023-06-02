class CreateReplies < ActiveRecord::Migration[7.0]
  def change
    create_table :replies do |t|
      t.text :option1
      t.text :option2
      t.text :option3
      t.text :option4
      t.text :selection
      t.text :topic

      t.timestamps
    end
  end
end
