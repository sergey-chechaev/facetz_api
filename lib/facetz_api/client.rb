module FacetzApi
  class Client
    attr_reader :conn

    def initialize
      @conn = FacetzApi::API.call
    end

    def lookup(ids: [], tids: {})
      response = @conn.post do |req|
        req.url FacetzApi.configuration.version
        req.headers['Content-Type'] = 'application/json'
        req.body = body(ids: ids).to_json
      end

      pars_response(response.body)
    end

    def body(ids: [], tids: {})
      {
        user: FacetzApi.configuration.user,
        key: FacetzApi.configuration.key,
        ids: ids,
      }
    end

    def pars_response(body)
      JSON.parse(body) unless body.empty?
    end
  end
end
