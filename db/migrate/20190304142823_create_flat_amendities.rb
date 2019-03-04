class CreateFlatAmendities < ActiveRecord::Migration[5.2]
  def change
    create_table :flat_amendities do |t|
      t.references :flat, foreign_key: true
      t.references :amenditie, foreign_key: true

      t.timestamps
    end
  end
end
