require 'spec_helper'

describe AuthorizeLink do
  it 'creates html' do
    expect(authorize_link("controller", "action", "Link", "path")).to include("authorized_action").and include("params").and include("controller").and include("action").and include("Link").and include("path")
  end
end
