class CreateKyoshus < ActiveRecord::Migration
  def change
    create_table :kyoshus do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
