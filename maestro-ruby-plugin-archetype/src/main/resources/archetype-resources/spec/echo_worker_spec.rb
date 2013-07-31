require 'spec_helper'
require 'echo_worker'

describe MaestroDev::Plugin::EchoWorker do

  before do
    subject.workitem = workitem
  end

  context "when echoing a message" do
    let(:workitem) {{'fields' => {'message' => 'Hello, World'}}}
    before { subject.echo }

    its(:error) { should be_nil }
    it "should print the output" do
      expect(subject.workitem[Maestro::MaestroWorker::OUTPUT_META]).to match(/Hello, World/)
    end
  end

  context "when missing fields" do
    let(:workitem) {{'fields' => {}}}
    it "should fail" do
      expect { subject.echo }.to raise_error(MaestroDev::Plugin::ConfigError)
    end
  end

end
