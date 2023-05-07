class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string      :first_name,    limit: 255
      t.string      :last_name,     limit: 255
      t.datetime    :date_of_birth

      t.timestamps
    end
  end
end
