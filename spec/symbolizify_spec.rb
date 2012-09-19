require 'spec_helper'
require 'symbolizify'

describe String do
  describe "#symbolizify" do
    {
      'Personal Phone' => 'personal_phone',
      'Home address'   => 'home_address',
      'HatRack'        => 'hat_rack',
      'Who is _why?'   => 'who_is_why?',
      'Person 1'       => 'person_1',
      'Personel! #231' => 'personel_231',
      'Shekibobo is great!'       => 'shekibobo_is_great!',
      'test.subject@example.com'  => 'test_subject_example_com'
    }.each do |original, symbolizified|
      it "should turn '#{original}' to '#{symbolizified}'" do
        original.symbolizify.should eq symbolizified
      end
    end
  end
end