RSpec.describe BookingAutomation::XMLClient do
  subject { described_class.new username, password }
  let(:username) { 'username' }
  let(:password) { 'dummypassword' }

  describe '#initialize' do
    it 'accepts auth data' do
      expect{ subject }.not_to raise_error
    end
  end

  describe 'accessors' do
    describe 'password' do
      let(:new_password) { 'newdummypassword' }
      it 'allows to access password' do
        expect(subject.password).to eq password
      end

      it 'allows to set password' do
        client = subject
        client.password = new_password
        expect(client.password).to eq new_password
      end
    end

    describe 'username' do
      let(:new_name) { 'newname' }
      it 'allows to access username' do
        expect(subject.username).to eq username
      end

      it 'allows to set username' do
        client = subject
        client.username = new_name
        expect(client.username).to eq new_name
      end
    end
  end
end