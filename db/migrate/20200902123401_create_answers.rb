class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.text :text
      t.integer :score
      t.text :review

      t.timestamps
    end
  end
end
