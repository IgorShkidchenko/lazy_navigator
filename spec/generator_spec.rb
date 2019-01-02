module LazyNavigator
  RSpec.describe Generator do
    let(:bash_file_name) { 'l' }
    let(:ruby_file_name) { 'last_project.rb' }
    let(:ruby_files_path) { "lazy_navigator/#{ruby_file_name}" }
    let(:generator) { described_class }

    describe 'when .generate_script should receive two puts' do
      it do
        allow(generator).to receive(:generate_bash) { true }
        allow(generator).to receive(:generate_ruby) { true }
        expect(generator).to receive(:puts).twice
        generator.generate_script
      end
    end

    describe 'when .generate_script should create files' do

      before { allow(generator).to receive(:add_script_command) }

      after do
        File.delete(ruby_files_path)
        File.delete(bash_file_name)
        FileUtils.rm_rf('lazy_navigator')
      end

      it do
        generator.generate_script
        expect(File.exist?(ruby_files_path)).to eq true
      end

      it do
        generator.generate_script
        expect(File.exist?(bash_file_name)).to eq true
      end
    end
  end
end
