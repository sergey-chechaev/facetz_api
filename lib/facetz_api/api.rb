module FacetzApi
  module API
    URL_PREFIX = "https://mdata.facetz.net/data/"

    class  << self

      def call
        connection(url: URL_PREFIX)
      end

      def connection(url: )
        Faraday.new(url) do |builder|
          builder.request  :url_encoded
          builder.response :logger
          builder.adapter  Faraday.default_adapter
          builder.response :multi_json, preserve_raw: true
        end
      end

    end
  end
end

