require 'rubygems'
require 'rspec'

$:.unshift File.expand_path '../../src', __FILE__

RSpec.configure do |config|
  config.before do
    Maestro::MaestroWorker.mock!
  end
end
