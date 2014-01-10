# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/psb.yaml
class PsbDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_psb
{Date.civil(2008,1,1) => 'New Year\'s Day',
 Date.civil(2008,5,26) => 'Memorial Day',
 Date.civil(2008,7,4) => 'Independence Day',
 Date.civil(2008,9,1) => 'Labor Day',
 Date.civil(2008,11,27) => 'Thanksgiving',
 Date.civil(2008,11,28) => 'Day after Thanksgiving',
 Date.civil(2008,12,24) => 'Christmas Eve',
 Date.civil(2008,12,25) => 'Christmas Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :psb)[0] || {})[:name]
end

  end
end
