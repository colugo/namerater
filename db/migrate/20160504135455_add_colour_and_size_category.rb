class AddColourAndSizeCategory < ActiveRecord::Migration
  def change
    execute "insert into categories (name) values ('Colour');"
    execute "insert into categories (name) values ('Size');"
  end
end
