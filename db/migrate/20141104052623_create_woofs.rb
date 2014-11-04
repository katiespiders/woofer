class CreateWoofs < ActiveRecord::Migration
  def change
    create_table :woofs do |t|
      t.string :author
      t.string :body

      t.timestamps
    end
  end
end
