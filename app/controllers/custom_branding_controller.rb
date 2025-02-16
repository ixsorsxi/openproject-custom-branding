class CustomBrandingController < ApplicationController
    before_action :require_admin
  
    # Admin Panel View
    def index
      @branding = CustomBranding.first_or_initialize
    end
  
    # Upload Custom Logo
    def upload_logo
      if params[:logo]
        file_path = Rails.root.join('public', 'custom', 'logo.png')
        File.open(file_path, 'wb') { |f| f.write(params[:logo].read) }
  
        flash[:notice] = "Logo updated successfully!"
      else
        flash[:error] = "No file selected."
      end
      redirect_to admin_custom_branding_path
    end
  
    # Update Theme Colors
    def update_theme
      branding = CustomBranding.first_or_initialize
      branding.update(header_color: params[:header_color], sidebar_color: params[:sidebar_color])
  
      flash[:notice] = "Theme updated successfully!"
      redirect_to admin_custom_branding_path
    end
  end  