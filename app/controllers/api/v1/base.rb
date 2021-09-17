module API
    module V1
      class Base < Grape::API
        version 'v1'
        mount Users
        mount Friends
      end
    end
  end