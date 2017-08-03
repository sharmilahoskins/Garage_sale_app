class RolifyCreateRoles < ActiveRecord::Migration[5.1]
  def up
    create_table(:roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end
    create_table(:users_roles, :id => false) do |t|
      t.references :user
      t.references :role
    end

    add_index(:roles, :name)
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:users_roles, [ :user_id, :role_id ])
  end

  def down
    drop_table(:roles)
    drop_table(:users_roles)
  end
end
