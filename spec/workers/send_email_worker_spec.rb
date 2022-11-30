# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SendEmailWorker, type: :worker do
  before(:each) do
    @user = FactoryBot.create(:user)
  end

  describe '#perform' do
    it 'creates a job in the queue' do
      expect {
        described_class.perform_async(@user.id)
      }.to change(described_class.jobs, :size).by(1)
    end

    it 'expects worker to be processed in the right queue' do
      expect(described_class).to be_processed_in :email_queue
    end

  end
end
