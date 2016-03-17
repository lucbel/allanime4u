require 'test_helper'
require 'mongo'

class TemplateRepositoryTest < ActiveSupport::TestCase

  test "create template repository" do
    assert_not_nil(TemplateRepository::new)
  end

  test "create mongo db connection" do
    db = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'test')
    assert_not_nil(db)
    db.use("test")
    coll = db [:example]
    assert_not_nil(coll)
    coll.insert_one({"name"=>"second example"})
  end

end
