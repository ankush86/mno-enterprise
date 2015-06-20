require 'mno-enterprise'

MnoEnterprise.configure do |config|
  
  #===============================================
  # General Configuration
  #===============================================
  # Name of your company/application
  config.app_name = "My Company"
  
  #===============================================
  # Maestrano Enterprise Tenant Authentication
  #===============================================
  # Configure your tenant ID
  config.tenant_id = "my_tenant_id"
  
  # Configure your tenant Key
  config.tenant_key = "my_tenant_access_key"
  
  #===============================================
  # Emailing
  #===============================================
  # Mandrill API key for sending email 
  # Defaulted to Maestrano Enterprise demo account
  # config.mandrill_key = 'some-mandrill-api-key'
  
  # Support email address
  config.support_email = 'support@example.com'
  
  # Default sender for system generated emails
  config.default_sender_name = 'My Company'
  config.default_sender_email = 'no-reply@example.com'
  
  #===============================================
  # Third Party Plugins
  #===============================================
  # Google Tag Manager
  # config.google_tag_container = nil
  
  #===============================================
  # API Configuration
  #===============================================
  # ==> Maestrano Enterprise API Configuration
  # Configure the API host
  # config.mno_api_host = "https://api-enterprise.maestrano.com"
  
  # Configure the API root path
  # config.mno_api_root_path = "/v1"
  
  #===============================================
  # Impac! Reporting Configuration
  #===============================================
  # ==> Impac! API Configuration
  # Configure the API host
  # config.impac_api_host = "https://api-impac-uat.maestrano.io"
  
  # Configure the API root path
  # config.impac_api_root_path = "/api/v1"
  
end