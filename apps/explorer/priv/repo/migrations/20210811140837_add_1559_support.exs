defmodule Explorer.Repo.Migrations.Add1559Support do
  use Ecto.Migration

  def up do
    alter table(:transactions) do
      add(:max_priority_fee_per_gas, :numeric, precision: 100, null: true)
      add(:max_fee_per_gas, :numeric, precision: 100, null: true)
      add(:type, :integer, null: true)
    end
  end

  def down do
    alter table(:transactions) do
      remove(:max_priority_fee_per_gas)
      remove(:max_fee_per_gas)
      remove(:type)
    end
  end
end
