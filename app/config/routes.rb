Rails.application.routes.draw do
    get 'admin/custom_branding', to: 'custom_branding#index'
    post 'admin/upload_logo', to: 'custom_branding#upload_logo'
    post 'admin/update_theme', to: 'custom_branding#update_theme'
  end  