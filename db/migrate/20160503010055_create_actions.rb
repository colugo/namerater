class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.text :name
    end
  end
end
