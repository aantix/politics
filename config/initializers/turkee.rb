# Go to this page https://aws-portal.amazon.com/gp/aws/developer/account/index.html?action=access-key
# to retrieve your AWS/Mechanical Turk access keys.

AWSACCESSKEYID      = '1Q618FTH0XDX7RR6RW82'
AWSSECRETACCESSKEY  = 'UBkMRPv+kgNwATyVnM8613Z9mOZ8pU2R/FbkXi23'
#HOST                = Rails.env == 'production' ? "http://growing-autumn-5949.heroku.com" : "http://localhost:3000"
HOST                = "http://localhost:3000"

RTurk::logger.level = Logger::DEBUG
RTurk.setup(AWSACCESSKEYID, AWSSECRETACCESSKEY, :sandbox => (Rails.env == 'production' ? false : true))