class Add < ActiveRecord::Migration[7.0]
  def change
    add_column :uploads, :uploaded_at, :datetime
  end
end
