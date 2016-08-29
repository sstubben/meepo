class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.float :salary
      t.references :team, foreign_key: true
      t.date :date_hired

      t.timestamps
    end
  end
end
