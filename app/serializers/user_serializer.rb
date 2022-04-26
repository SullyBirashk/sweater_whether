class UserSerializer
  include JSONAPI::Serializer
  set_id :id
  set_type 'users'

  attributes :email, :access_token
end
