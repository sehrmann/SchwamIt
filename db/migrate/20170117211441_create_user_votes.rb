class CreateUserVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_votes do |t|
      t.belongs_to :user, null: false
      t.belongs_to :review, null: false
      t.integer :value, default: 0
    end
  end
end
