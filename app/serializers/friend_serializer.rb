class FriendSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :email, :phone, :address, :user_id
 end