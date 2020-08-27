require 'rest-client'

class API
  def call(params)
    RestClient::Request.execute(
        method:  params[:method],
        url:     base_host + params[:path],
        payload: params[:payload],
        headers: params[:headers]
    ) { |response| response }
  end
end
