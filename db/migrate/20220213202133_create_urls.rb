class CreateUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :urls do |t|
      t.string :default_url
      t.string :short_url
      t.integer :numbers_access
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
