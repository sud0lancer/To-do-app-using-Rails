class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.text :description
      t.datetime :time
      t.boolean :reminder
      t.string :email

      t.timestamps
    end
  end
end
