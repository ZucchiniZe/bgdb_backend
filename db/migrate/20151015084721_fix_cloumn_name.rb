class FixCloumnName < ActiveRecord::Migration
  def change
    rename_column :games, :length, :avg_length_min
  end
end
