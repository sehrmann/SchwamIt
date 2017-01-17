class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :body
      t.integer :vote_score, default: 0
      t.timestamps null: false
      t.belongs_to :item
      t.belongs_to :user
    end
  end
end
