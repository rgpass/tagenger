class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_initial
      t.string :email
      t.string :tag
      t.string :password_digest
      t.boolean :tndcheck

      t.timestamps
    end
  end
end
