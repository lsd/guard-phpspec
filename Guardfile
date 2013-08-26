notification :off
guard :rspec do
  watch(%r{^.+\.gemspec$})
  watch(%r{^lib/guard/(.+)\.rb$})     { |m| "spec/lib/guard/#{m[1]}_spec.rb" }
  watch(%r{^lib/guard/phpspec/(.+)\.rb$})     { |m| "spec/lib/guard/phpspec/#{m[1]}_spec.rb" }
  watch(%r{^spec/.+_spec\.rb$})
  watch('spec/spec_helper.rb')  { "spec" }
end
