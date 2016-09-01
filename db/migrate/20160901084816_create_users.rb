class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest

      t.timestamps null: false
      t.index :email, unique: true
      
    end
  end
end
