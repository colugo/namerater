class AddPhonetic < ActiveRecord::Migration
  def change
    execute "insert into categories (name) values ('Phonetic');"
  end
end
