class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|

      t.string :timestamps,          null: false
      t.string :nickname,            null: false
      t.string :email,               null: false, default: ""
      t.string :encrypted_password,  null: false, default: ""
      t.integer :age,                null: false
      t.string :children,            null: false
      t.text :info,                  null: false
    end
  end
end
