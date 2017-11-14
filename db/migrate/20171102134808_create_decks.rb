class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :title
      t.boolean :public, default: true
      t.string :subject

      t.timestamps
    end
  end
end
