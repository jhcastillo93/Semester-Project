if Rails.env.production?
	CarrierWave.configure do |config|
		config.fog_credentials = {
			# Configurations for Amazon S3
			:provider				=> 'AWS',
			:aws_access_ley_id		=> ENV['AKIAIETNWWUUM6ZEPXLA'],
			:aws_secret_access_key	=> ENV['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']
		}
		config.fog_directory		= ENV['jhcastillo']
	end
end