require 'spec_helper'

describe MaestroDev::EchoWorker do
  before :all do
    @test_participant = MaestroDev::EchoWorker.new
  end

  it "should echo a message" do
    wi = Ruote::Workitem.new({'fields' => {
                              'message' => 'Hello, World',
                              }})

    @test_participant.expects(:workitem => wi.to_h).at_least_once

    @test_participant.echo

    wi.fields['__error__'].should eql('')
    @test_participant.workitem['__output__'].should match /Hello, World/
  end
end
