class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true
      t.string :token

      t.timestamps
    end
  end
end
