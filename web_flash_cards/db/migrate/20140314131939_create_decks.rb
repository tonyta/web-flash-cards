class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :category

      t.timestamps
    end

    create_table :cards do |t|
      t.belongs_to :deck
      t.string :front
      t.string :back

      t.timestamps
    end
  end
end
