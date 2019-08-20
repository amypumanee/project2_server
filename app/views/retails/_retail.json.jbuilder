json.extract! retail, :id, :user_id, :address1, :address2, :suburb, :postcode, :phone, :email, :website, :facebook, :instagram, :created_at, :updated_at, :retail_name, :retail_image
json.services do
    json.array! retail.services, :category_id, :title, :description, :service_image, :price, :duration, :ispopular, :retail_id
end
json.url retail_url(retail, format: :json)
