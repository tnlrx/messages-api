class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :discussions, index: true
      t.string :text
      t.string :author
      t.string :recipient
      t.boolean :isprivate
      t.boolean :isarchived

      t.timestamps
    end
  end
end
