# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dealdash_session',
  :secret      => '7dc932ec1141aa3ba8186ff55f1b1c1089e2e12cb3a605c506e39e53f2d8d8e7fbfc0ae7a25c31d7f149cab586003eb3dd7f5c6fdefd034a79103897522dac34'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
