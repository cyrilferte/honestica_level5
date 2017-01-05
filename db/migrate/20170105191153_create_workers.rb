class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :first_name
      t.integer :price_per_shift
      t.string :status

      t.timestamps
    end
  end
end
