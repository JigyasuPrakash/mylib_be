class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string      :book_title,    limit: 255,     null: false
      t.float       :price,         default: 0.0
      t.integer     :level,         default: 0

      t.timestamps
    end
  end
end
