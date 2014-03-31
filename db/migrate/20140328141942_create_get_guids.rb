class CreateGetGuids < ActiveRecord::Migration
  def change
    create_table :get_guids do |t|

      t.timestamps
    end
  end
end
