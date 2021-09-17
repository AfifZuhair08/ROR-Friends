module API
    module V1
      class Friends < Grape::API
  
        include API::V1::Defaults
  
        resource :friends do
          desc "Return all friends"
          get "" do
            Friend.all
          end
          
        desc "Return a user"
          params do
            requires :id, type: String, desc: "ID of the user"
          end
          get ":id" do
            Friend.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
  end