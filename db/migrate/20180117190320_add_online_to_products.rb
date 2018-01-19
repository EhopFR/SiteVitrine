class AddOnlineToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :online, :boolean, default: false
  end
end
