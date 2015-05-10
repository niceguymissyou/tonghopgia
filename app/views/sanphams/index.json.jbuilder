json.array!(@sanphams) do |sanpham|
  json.extract! sanpham, :id, :MaMatHang, :TenSP, :HinhAnh, :DonViTinh
  json.url sanpham_url(sanpham, format: :json)
end
