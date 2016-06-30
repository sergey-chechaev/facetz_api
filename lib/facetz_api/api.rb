module FacetzApi
  module API
    URL_PREFIX = "https://mdata.facetz.net/data/"

    class  << self

      def call
        connection(url: URL_PREFIX)
      end

      def connection(url: )
        Faraday.new(url) do |builder|
          builder.request :url_encoded  # for POST/PUT params
          builder.adapter :net_http
        end
      end

    end
  end
end

