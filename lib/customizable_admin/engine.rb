module CustomizableAdmin

  # Tables name prefix for
  def self.table_name_prefix
    'cadm_'
  end

  #
  class Engine < ::Rails::Engine
    #
    isolate_namespace CustomizableAdmin
    #
    engine_name 'customizable_admin'
    #
    require 'devise'
    require 'ancestry'
    require 'cancancan'
    require 'jquery-rails'
    require 'jquery-ui-rails'
    # require 'turbolinks'
    require 'simple_form'
    require 'will_paginate'
    require 'ancestry'
    require 'bootstrap-sass'

    # Custom Devise custom failure
    # require 'custom_failure'

    # Include generators
    config.generators do |g|
      g.templates.unshift File::expand_path('../templates', __FILE__)
    end

    # Devise layouts
    config.to_prepare do
      Devise::ConfirmationsController.layout CustomizableAdmin.devise_layout
      Devise::PasswordsController.layout CustomizableAdmin.devise_layout
      Devise::RegistrationsController.layout CustomizableAdmin.devise_layout
      Devise::SessionsController.layout CustomizableAdmin.devise_layout
      Devise::UnlocksController.layout CustomizableAdmin.devise_layout
    end

  end
end
