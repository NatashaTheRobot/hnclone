class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url, unique: true
      t.references :user

      t.timestamps
    end
  end
end
