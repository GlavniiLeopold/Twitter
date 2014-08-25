class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
    add_column :users, :remember_token, :string
    add_index  :users, :remember_token
  end
end
