module ControllerUtils
  def http_login
    before do
      request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(ENV['USER_NAME'], ENV['PASSWORD'])
    end
  end
end
