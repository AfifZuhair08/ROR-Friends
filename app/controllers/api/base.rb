module API
    class Base < Grape::API
        prefix 'api'
        mount V1::Base
    end
end