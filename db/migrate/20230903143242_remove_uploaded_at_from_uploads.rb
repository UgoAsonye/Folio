class RemoveUploadedAtFromUploads < ActiveRecord::Migration[7.0]
  def change
    remove_column :uploads, :uploaded_at, :datetime
  end
end
