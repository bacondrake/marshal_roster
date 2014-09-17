class AddAddressPhoneEmailToNtcmarshals < ActiveRecord::Migration
  def change
    add_column :ntcmarshals, :address, :string
    add_column :ntcmarshals, :phone, :string
    add_column :ntcmarshals, :email, :string
  end
end
