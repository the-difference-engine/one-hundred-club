CarrierWave.configure do |config|
  # config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['S3_ACCESS_KEY_ID'],                        # required
    aws_secret_access_key: ENV['S3_SECRET_ACCESS_KEY_ID'],                        # required
    region:                'us-east-1'               # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'one-hundred-club-chicago'                              # optional, defaults to true
#   config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end