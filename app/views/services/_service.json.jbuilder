json.extract! service, :id, :category_id, :title, :description, :service_image, :price, :duration, :ispopular, :retail_id, :created_at, :updated_at
json.retail do
    json.extract! service.retail, :user_id, :retail_name, :retail_image, :address1, :address2, :suburb, :postcode, :phone, :email, :website, :facebook, :instagram
end
json.url service_url(service, format: :json)
