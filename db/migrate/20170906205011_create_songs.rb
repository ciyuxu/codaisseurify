class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :track
      t.text :lyrics
      t.string :album

      t.timestamps
    end
  end
end
