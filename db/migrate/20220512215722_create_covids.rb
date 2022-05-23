class CreateCovids < ActiveRecord::Migration[7.0]
  def change
    create_table :covids do |t|
      t.string :GEN
      t.string :BEZ
      t.string :BL
      t.integer :BL_ID
      t.float :death_rate
      t.float :cases7_per_100k
      t.float :cases7_bl_per_100k

      t.timestamps
    end
  end
end
