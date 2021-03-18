class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :admin_name
      t.string :admin_bio
      t.integer :admin_number

      t.timestamps
    end
  end
end
