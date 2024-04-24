# frozen_string_literal: true

require "spec_helper"

RSpec.describe OmniAuth::Strategies::Outreach do
  context "client options" do
    let!(:subject) { OmniAuth::Strategies::Outreach.new({}) }

    it "should have the correct site" do
      expect(subject.options.client_options.site).to eq("https://api.outreach.io")
    end

    it "should have the correct authorize url" do
      expect(subject.options.client_options.authorize_url).to eq("https://api.outreach.io/oauth/authorize")
    end

    it "should have the correct token url" do
      expect(subject.options.client_options.token_url).to eq("https://api.outreach.io/oauth/token")
    end
  end
end
