class AddBirthdateToGetGuids < ActiveRecord::Migration
  def change
    add_column :get_guids, :birthdate, :date
  end
end
