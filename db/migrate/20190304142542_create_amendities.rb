class CreateAmendities < ActiveRecord::Migration[5.2]
  def change
    create_table :amendities do |t|
      t.string :name

      t.timestamps
    end
  end
end
