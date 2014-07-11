class CreateSmails < ActiveRecord::Migration
  def change
    create_table :smails do |t|
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
