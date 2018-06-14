class CreateMemos < ActiveRecord::Migration[5.1]
  def change
    create_table :memos do |t|
      t.references :reflection, foreign_key: true
      t.text       :memo
      t.timestamps
    end
  end
end
