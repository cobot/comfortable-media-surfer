# frozen_string_literal: true

require_relative '../../../test_helper'

class ContentTagsTextTest < ActiveSupport::TestCase
  setup do
    @page = comfy_cms_pages(:default)
  end

  def test_init
    tag = ComfortableMediaSurfer::Content::Tags::Text.new(context: @page, params: ['test'])
    assert_equal 'test', tag.identifier
  end
end
