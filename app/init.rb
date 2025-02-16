require 'redmine'

Redmine::Plugin.register :custom_branding do
  name 'Custom Branding Plugin'
  author 'ixsorsxi'
  description 'This plugin allows admins to upload a custom logo and modify UI colors.'
  version '1.0.0'
  url 'https://github.com/ixsorsxi/openproject-custom-branding'
  author_url 'https://github.com/ixsorsxi'

  menu :admin_menu, :custom_branding, { controller: 'custom_branding', action: 'index' }, caption: 'Branding', html: { class: 'icon' }
end