class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      # references
      t.references :user,         null: false, foreign_key: true
      t.references :area,         null: false, foreign_key: true
      t.references :shippingway,  null: false, foreign_key: true
      
      # values
      t.integer    :status_number
      t.string     :first_name,           null: false
      t.string     :last_name,            null: false
      t.string     :first_name_kana,      null: false
      t.string     :last_name_kana,       null: false
      t.string     :postal_number,        null: false
      t.string     :address_city,         null: false
      t.string     :address_number,       null: false
      t.string     :address_building,     null: false
      t.string     :telephone_number,     null: false

      t.timestamps
    end
  end
end
