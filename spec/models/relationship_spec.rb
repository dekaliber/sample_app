require 'spec_helper'

describe Relationship do

  let(:follower) { FactoryGirl.create(:user) }
  let(:followed) { FactoryGirl.create(:user) }
  let(:relationship) { follower.relationships.build(followed_id: followed.id) }

  subject { relationship } 

  it { should be_valid }

  describe "follower methods" do
  	it { should respond_to(:follower) }
  	it { should respond_to(:followed) }
  	its(:follower) { should eq follower }
  	its(:followed) { should eq followed }
  end

  describe "when followed id is not present" do
  	before { relationship.followed_id = nil }
  	it { should_not be_valid }
  end

  describe "when follower id is not present" do
  	before { relationship.follower_id = nil }
  	it { should_not be_valid }
  end

  # Exercise 11.5
  # describe "micropost assocations" do
  #   before do
  #     @user = User.new(name: "Example User", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
  #     @user.save
  #     @user.relationships.build(id: 100, followed_id: 1)
  #   end 
    
  #   it "should destroy associated microposts" do
  #     relationships = @user.relationships.to_a
  #     @user.destroy
  #     expect(relationships).not_to be_empty
  #     relationships.each do |relationship|
  #       expect(Relationship.where(id: relationship.id)).to be_empty
  #     end
  #   end
  # end
end
