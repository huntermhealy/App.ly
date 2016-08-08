class CreateApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :applications do |t|
      t.string :link
      t.datetime :due
      t.integer :num_recommendations
      t.boolean :essay
      t.text :essay_topics
      t.integer :award_amount
      t.integer :essay_word_count

      t.timestamps
    end
  end
end
