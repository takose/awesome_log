class AccountsService
  SERVICES = ['jawbone'].freeze

  class << self
    def registered_services(user)
      SERVICES.select{ |s| eval("user.#{s}_account") }
    end
  end
end
