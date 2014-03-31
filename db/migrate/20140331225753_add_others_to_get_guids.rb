class AddOthersToGetGuids < ActiveRecord::Migration
  def change
    add_column :get_guids, :nation_of_birth, :string
    add_column :get_guids, :nation_of_government_id, :string
  end
end
