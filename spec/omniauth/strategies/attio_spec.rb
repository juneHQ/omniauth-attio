RSpec.describe OmniAuth::Attio do
  it "has a version number" do
    expect(OmniAuth::Attio::VERSION).not_to be nil
  end

  subject do
    OmniAuth::Strategies::Attio.new({})
  end

  context "client options" do
    it 'should have correct name' do
      expect(subject.options.name).to eq("attio")
    end

    it 'should have correct site' do
      expect(subject.options.client_options.site).to eq('https://app.attio.com')
    end

    it 'should have correct authorize url' do
      expect(subject.options.client_options.authorize_url).to eq('https://app.attio.com/authorize')
    end

    it 'should have correct token url' do
      expect(subject.options.client_options.token_url).to eq('https://app.attio.com/oauth/token')
    end
  end
end
