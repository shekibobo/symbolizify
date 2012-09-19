require 'spec_helper'
require 'symbolizify'

describe String do
  describe "#symbolizify" do
    {
      'Personal Phone  ' => 'personal_phone',
      'Home address'     => 'home_address',
      'HatRack'          => 'hat_rack',
      'Who is _why?'     => 'who_is_why',
      'Person 1'         => 'person_1',
      'Personel! #231'   => 'personel_231',
      'Wang chung !'     => 'wang_chung',
      'Shekibobo is great!'       => 'shekibobo_is_great',
      'test.subject@example.com'  => 'test_subject_example_com'
    }.each do |original, symbolizified|
      it "should turn '#{original}' to '#{symbolizified}'" do
        original.symbolizify.should eq symbolizified
      end
    end

    it "should return a copy of the original string" do
      original = original_copy = "I don't know what I was expecting"
      original.symbolizify
      original.should eq original_copy
    end
  end

  describe "#symbolizify!" do
    it "should modify the string in place" do
      string = "Gangnam Style"
      string.symbolizify!
      string.should eq "gangnam_style"
    end
  end
end

describe ActiveSupport::Inflector do
  describe "#symbolizify" do
    it "should coerce non-strings to strings prior to conversion" do
      ActiveSupport::Inflector.symbolizify(%w[array of strings!]).should eq "array_of_strings"
    end
  end
end