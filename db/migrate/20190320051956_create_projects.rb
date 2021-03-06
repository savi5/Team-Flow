class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.references :platform, index: true, foreign_key: true
      t.boolean :approval_status

      t.timestamps null: false
    end
  end
end
