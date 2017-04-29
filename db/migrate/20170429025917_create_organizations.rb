class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.text :overview
      t.integer :employees
      t.integer :teamsize
      t.string :website
      t.string :twitter
      t.string :logo
      t.boolean :published, default: false
      t.string :photos, array: true, default: []

      t.timestamps
    end
  end
end
