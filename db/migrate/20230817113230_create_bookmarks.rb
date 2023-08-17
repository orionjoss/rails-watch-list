class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.references :id_movies, null: false, foreign_key: true
      t.references :id_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
