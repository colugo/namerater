class AddNumberCategory < ActiveRecord::Migration
  def change
    execute "insert into categories (name) values ('Number');"
  end
end
