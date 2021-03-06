class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
