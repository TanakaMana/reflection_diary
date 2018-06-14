class CreateReflections < ActiveRecord::Migration[5.1]
  def change
    create_table :reflections do |t|
      t.references  :user, foreign_key: true
      t.string      :title
      t.date        :date
      t.timestamps
    end
  end
end
