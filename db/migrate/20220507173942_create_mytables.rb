class CreateMytables < ActiveRecord::Migration[7.0]
  def change
    create_table :mytables do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :twitter

      t.timestamps
    end
  end
end
