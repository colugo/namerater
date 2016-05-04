class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.text :name
    end
    execute "insert into categories (name) values ('Animal');"
    execute "insert into categories (name) values ('Action');"
  end
end
