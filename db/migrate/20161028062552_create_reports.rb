class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.text :description
      t.string :category
      t.string :email
      t.boolean :read
      t.integer :price
      t.datetime :completion_time

      t.timestamps
    end
  end
end
