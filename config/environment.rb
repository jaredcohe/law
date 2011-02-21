# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Law::Application.initialize!

ENV['RECAPTCHA_PUBLIC_KEY']  = '6LdcxMESAAAAACqdS9rtWt2QLVcWsgEgGgbvaetk'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LdcxMESAAAAAMbbF2A6ua1lLOemUV-gI7Bq0qTI'