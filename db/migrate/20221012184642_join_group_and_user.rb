class JoinGroupAndUser < ActiveRecord::Migration[7.0]
  def change
    create_join_table :groups, :users
  end
end
