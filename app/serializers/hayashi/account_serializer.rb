class Hayashi::AccountSerializer < ApplicationSerializer
  adapter Oat::Adapters::HAL

  schema do
    type "account"
    link :self, href: context[:controller].account_url(item)

    map_properties :id, :address, :sequence, :balances

  end
end