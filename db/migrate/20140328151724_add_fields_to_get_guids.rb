class AddFieldsToGetGuids < ActiveRecord::Migration
  def change
    add_column :get_guids, :first_name, :string
    add_column :get_guids, :middle_name, :string
    add_column :get_guids, :last_name, :string
    add_column :get_guids, :day_of_birth, :integer
    add_column :get_guids, :month_of_birth, :integer
    add_column :get_guids, :year_of_birth, :integer
    add_column :get_guids, :city_of_birth, :string
    add_column :get_guids, :country_of_birth, :string
    add_column :get_guids, :sex_at_birth, :string
    add_column :get_guids, :government_id, :string
    add_column :get_guids, :country_of_id, :string
    add_column :get_guids, :uuid, :string
  end
end
