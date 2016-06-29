module FacetzApi
  class Client
    def initialize
      @conn = FacetzApi::API.call
    end

    def lookup(ids: [], tids: {})
      @conn.post do |req|
        req.url = FacetzApi.configuration.version
        req.headers['Content-Type'] = 'application/json'
        req.body = body(ids: ids, tids: tids)
      end
    end

    def body(ids: [], tids: {})
      {
        user: FacetzApi.configuration.user,
        key: FacetzApi.configuration.key,
        ids: ids,
        tids: tids
      }
    end
  end
end
