class CreateLinks < ActiveRecord::Migration

  def change
    create_table :links do |t|
      t.string :URL
      t.string :title
      t.string :summary
      t.timestamps null: false
    end
  end
end