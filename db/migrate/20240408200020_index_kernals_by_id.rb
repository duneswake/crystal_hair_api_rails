class IndexKernalsById < ActiveRecord::Migration[7.0]
  def change
    add_index :kernals, :id
  end
end
