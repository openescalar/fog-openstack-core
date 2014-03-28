module Fog
  module OpenStackCommon
    class IdentityV2
      class Real

        def get_user_by_name(name)
          request(
            :method   => 'GET',
            :expects  => [200, 203],
            :path     => "/v2.0/users?name=#{name}"
          )
        end

      end

      class Mock
      end
    end # IdentityV2
  end # OpenStackCommon
end # Fog
