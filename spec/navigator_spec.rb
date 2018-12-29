module LazyNavigator
  RSpec.describe Generator do
    let(:path) { 'lazy_navigator/last_project.rb' }
    let(:path2) { 'l' }
    let(:generator) { Generator }

    describe 'when #generate_script should receive two puts' do
      it do
        allow(generator).to receive(:generate_bash) { true }
        allow(generator).to receive(:generate_ruby) { true }
        expect(generator).to receive(:puts).twice
        generator.generate_script
      end
    end

    describe 'when #generate_script should create files' do
      before do
        allow(generator).to receive(:add_script_command)
      end

      after do
        File.delete(path)
        File.delete(path2)
        FileUtils.rm_rf('lazy_navigator')
      end

      it do
        generator.generate_script
        expect(File.exist?(path)).to eq true
      end

      it do
        generator.generate_script
        expect(File.exist?(path2)).to eq true
      end
    end
  end
end
