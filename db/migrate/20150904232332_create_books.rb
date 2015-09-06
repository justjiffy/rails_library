class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :f_name
      t.string :l_name
      t.string :publisher
      t.integer :copyright
      t.string :language
      t.string :isbn
      t.string :desc

      t.timestamps null: false
    end
  end
end
