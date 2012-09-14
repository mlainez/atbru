class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name,     :null => false
      t.string :company
      t.string :vat
      t.string :purchase_order
      t.string :address,  :null => false
      t.string :zip,      :null => false
      t.string :city,     :null => false
      t.string :country,  :null => false
      t.string :email,    :null => false
      t.string :phone
      t.timestamps
    end
  end
end
