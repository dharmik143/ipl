class CreateIpls < ActiveRecord::Migration[5.1]
  def change
    create_table :ipls do |t|
      t.string :p_name
      t.string :price
      t.string :ptype

      t.timestamps
    end
  end
end
