class CreateFinalDummies < ActiveRecord::Migration
  def change
    create_table :final_dummies do |t|
      t.text :text

      t.timestamps
    end
  end
end
