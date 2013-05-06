class AddProToEpisodes < ActiveRecord::Migration
  def change
    add_column :episodes, :pro, :boolean, default: false, null: false
  end
end
