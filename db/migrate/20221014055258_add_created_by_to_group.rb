class AddCreatedByToGroup < ActiveRecord::Migration[7.0]
  def change
    add_reference :groups, :user, optional: true, foreign_key: true
  end
end
