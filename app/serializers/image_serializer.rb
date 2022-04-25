class ImageSerializer
  include JSONAPI::Serializer
  # set_id :id
  # set_type 'image'

  attributes :id, :description, :alt_description, :urls

end
