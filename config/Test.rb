module Test
  class API < Grape::API
    # version 'v1', using: :header, vendor: 'twitter'
    version 'v1', using: :path
    format :json
    prefix :api

    helpers do
      def current_user
        @current_user ||= User.authorize!(env)
      end

      def authenticate!
        error!('401 Unauthorized', 401) unless current_user
      end
    end

    resource :statuses do

      desc "Return a public timeline."
      get :test do
        # Status.limit(20)
        "test message"
      end

    end
  end
end
