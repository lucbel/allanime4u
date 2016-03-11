require 'test_helper'

class TemplateRepositoryTest < ActiveSupport::TestCase

  test "create template repository" do
    assert_not_nil(TemplateRepository::new)
  end

end
