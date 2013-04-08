class AddAccounts < ActiveRecord::Migration
  def up
    create_table :accounts do |t|
      t.string :name, :null => false
      t.string :subdomain, :null => false
    
      t.timestamps
    end
  end

  def down
    drop_table :accounts
  end
end
