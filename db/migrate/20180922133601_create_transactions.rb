class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true
      t.string :paidto
      t.boolean :paid

      t.timestamps
    end
  end
end
