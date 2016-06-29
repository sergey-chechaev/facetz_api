module FacetzApi
  class Configuration
    # curl --data '{"user":"","key":"","ids":["3134ac45-d165-43c9-83c6-bc8f79202348"]}' https://mdata.facetz.net/data/v1/
    attr_accessor :user, :key, :ids, :tids, :version

    def initialize
      @user = nil
      @key = nil
      @ids = []
      @tids = []
      @version = "v1"
    end
  end
end
