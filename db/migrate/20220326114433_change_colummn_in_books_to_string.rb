class ChangeColummnInBooksToString < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :release_date, :string
  end
end
