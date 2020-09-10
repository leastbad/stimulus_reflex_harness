class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.boolean :personal, default: false
      t.belongs_to :owner, foreign_key: {to_table: :users}
      t.string :domain
      t.string :subdomain
      t.timestamps
    end
  end
end

