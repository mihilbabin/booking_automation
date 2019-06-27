RSpec.describe Bautom::Client do
  subject { described_class.new auth_token }
  let(:auth_token) { 'dummytoken' }

  describe '#initialize' do

    it 'accepts auth token' do
      expect{ subject }.not_to raise_error
    end
  end

  describe 'accessors' do
    let(:new_auth_token) { 'newdummytoken' }
    it 'allows to access token' do
      expect(subject.auth_token).to eq auth_token
    end

    it 'allows to set token' do
      client = subject
      client.auth_token = new_auth_token
      expect(client.auth_token).to eq new_auth_token
    end
  end
end
