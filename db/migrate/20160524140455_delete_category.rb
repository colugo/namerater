class DeleteCategory < ActiveRecord::Migration
  def change
    execute "drop table categories;"
  end
end
