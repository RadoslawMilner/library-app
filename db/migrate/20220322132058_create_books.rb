class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.date :release_date
      t.integer :book_id
      t.date :deadline_for_return
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
