class CreateUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :uploads do |t|
      t.string :title
      t.string :description
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
