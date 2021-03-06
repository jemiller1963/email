require "rails_helper"

RSpec.describe ProjectMailer, type: :mailer do
  describe "user_added_to_project" do
    let(:mail) { ProjectMailer.user_added_to_project }

    it "renders the headers" do
      expect(mail.subject).to eq("User added to project")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
