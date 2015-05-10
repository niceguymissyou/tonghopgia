class CreateSanphams < ActiveRecord::Migration
  def change
    create_table :sanphams do |t|
      t.string :MaMatHang
      t.string :TenSP
      t.string :HinhAnh
      t.string :DonViTinh

      t.timestamps null: false
    end
  end
end
