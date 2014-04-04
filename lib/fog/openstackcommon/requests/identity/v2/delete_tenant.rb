module Fog
  module OpenStackCommon
    class IdentityV2
      class Real

        def delete_tenant(id)
          request(
            :method  => 'DELETE',
            :expects => [200, 204],
            :path    => "/v2.0/tenants/#{id}",
            :admin   => true
          )
        end

      end # Real

      class Mock
      end
    end # IdentityV2
  end # OpenStackCommon
end # Fog
