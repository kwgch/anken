class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :no
      t.string :title
      t.string :place
      t.string :content
      t.string :term
      t.string :price
      t.string :environment
      t.string :job
      t.string :contract
      t.string :business

      t.timestamps
    end
  end
end
