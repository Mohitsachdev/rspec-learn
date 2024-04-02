require 'rails_helper'

describe PostSerializer do
  let(:post) do
    build_stubbed(
      :post,
      title: "Hello",
      description: "Hello hie bie bie"
    )
  end

  subject { described_class.new(post).as_json }

  it "includes title and description attributes" do
    expect(subject).to include(
      title: "Hello",
      description: "Hello hie bie bie",
      edit:"Hel"
    )
  end
end