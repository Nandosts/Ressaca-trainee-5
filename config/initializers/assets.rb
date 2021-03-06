# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( navbar.scss )
Rails.application.config.assets.precompile += %w( login.scss )
Rails.application.config.assets.precompile += %w( card.scss )
Rails.application.config.assets.precompile += %w( footer.scss )
Rails.application.config.assets.precompile += %w( products.scss )
Rails.application.config.assets.precompile += %w( perfil.scss )
Rails.application.config.assets.precompile += %w( Mask.js )
Rails.application.config.assets.precompile += %w( drink_types.scss )
Rails.application.config.assets.precompile += %w( carousel.js )
Rails.application.config.assets.precompile += %w( search.scss )
Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( product_form.scss )
Rails.application.config.assets.precompile += %w( custom.scss )
Rails.application.config.assets.precompile += %w( cart.scss )
Rails.application.config.assets.precompile += %w( addresses.scss )

