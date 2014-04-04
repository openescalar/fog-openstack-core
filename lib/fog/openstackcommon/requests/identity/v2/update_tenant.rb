module Fog
  module OpenStackCommon
    class IdentityV2
      class Real

        def update_tenant(id, attributes)
          attributes.merge!('id' => id)
          request(
            :method  => 'POST',
            :expects => [200],
            :path    => "/v2.0/tenants/#{id}",
            :body    => MultiJson.encode({ 'tenant' => attributes }),
            :admin   => true
          )
        end # def update_tenant

      end # Real

      class Mock
      end
    end # IdentityV2
  end # OpenStackCommon
end # Fog
