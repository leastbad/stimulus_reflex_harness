class CreateAccountUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :account_users do |t|
      t.bigint "account_id"
      t.bigint "user_id"  
      t.timestamps
      t.index ["account_id"], name: "index_account_users_on_account_id"
      t.index ["user_id"], name: "index_account_users_on_user_id"  
    end
  end
end
