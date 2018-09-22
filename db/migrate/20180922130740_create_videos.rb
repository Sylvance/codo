class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :video_type
      t.string :view_code

      t.timestamps
    end
  end
end
