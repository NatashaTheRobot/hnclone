class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text, :null => false

      t.references :user, :null => false
      t.references :link, :null => false
      t.references :comment

      t.timestamps
    end
  end
end
