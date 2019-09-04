class CreateWaiters < ActiveRecord::Migration[6.0]
  def change
    create_table :waiters do |t|
      t.string :name
      t.belongs_to :pizza, null: false, foreign_key: true
      t.belongs_to :patron, null: false, foreign_key: true

      t.timestamps
    end
  end
end
