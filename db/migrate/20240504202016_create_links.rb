class CreateLinks < ActiveRecord::Migration[7.1]
  def change
    create_table :links do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :url
      t.boolean :age_restricted

      t.timestamps
    end
  end
end
