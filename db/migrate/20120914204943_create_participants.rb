class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :registration
      t.string :name,  :null => false
      t.string :email, :null => false
      t.timestamps
    end
  end
end
