class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.references :user_id, foreign_key: true

      t.timestamps
    end
  end
end
