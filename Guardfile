# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'spork', :cucumber_env => { 'RAILS_ENV' => 'test' }, :rspec_env => { 'RAILS_ENV' => 'test' } do
  watch('spec/spec_helper.rb')
end

guard 'rspec', :version => 2, :cli => "--drb" do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/#{m[1]}_spec.rb" }
  watch(%r{^app/models/(.+)\.rb$})     { |m| "spec/models/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end

