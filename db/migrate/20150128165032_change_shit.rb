class ChangeShit < ActiveRecord::Migration
  def change
    change_column :notes, :body, :text, :limit => nil
  end
end
