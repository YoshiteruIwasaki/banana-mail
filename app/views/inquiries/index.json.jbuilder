json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :id, :name, :zip, :prefecture, :address1, :address2, :email, :content
  json.url inquiry_url(inquiry, format: :json)
end
