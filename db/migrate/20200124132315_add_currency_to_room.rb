class AddCurrencyToRoom < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :currency, :string
  end
end
