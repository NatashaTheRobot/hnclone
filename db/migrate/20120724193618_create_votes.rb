class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :value, :null => false #up or down vote
      t.references :user, :null => false
      t.references :link, :null => false

      t.timestamps
    end
  end

end
