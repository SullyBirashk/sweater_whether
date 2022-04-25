class ImageSerializer
  include JSONAPI::Serializer

  attributes :id, :description, :alt_description, :urls

end
