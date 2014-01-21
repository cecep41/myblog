class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.text :bio
      t.string :facebook
      t.string :twitter
      t.references :user, index: true

      t.timestamps
    end
  end
end
