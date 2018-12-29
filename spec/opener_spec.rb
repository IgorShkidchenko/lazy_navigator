module LazyNavigator
  RSpec.describe Opener do
    describe 'when #lead should receive puts' do
      it do
        allow(Dir).to receive(:chdir)
        allow(Opener).to receive_message_chain(:gets, :chomp) { Opener::ACCEPT }
        expect(Opener).to receive(:puts)
        Opener.lead(path: nil)
      end
    end
  end
end
