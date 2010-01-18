# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_haiti_session',
  :secret      => 'eb03b3d43d5eeb3ae85c4c203d09604d38420bd000d60b8c81e44a3bd03721dd3be2e6ea44fa3424d2f59f90c97cc7e7a419494e2d47ff2a1ee9679e84fef738'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
