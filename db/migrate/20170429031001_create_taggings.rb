class CreateTaggings < ActiveRecord::Migration[5.0]
  def change
    create_table :taggings do |t|
      t.references :tag, foreign_key: true
      t.references :organization, foreign_key: true

      t.timestamps
    end
    add_index :taggings, [:tag_id, :organization_id], unique: true
  end
end
