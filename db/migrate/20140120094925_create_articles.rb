class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.datetime :publish_at
      t.references :user, index: true
      t.integer :state
      t.index :state

      t.timestamps
    end
  end
end
