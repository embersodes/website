require 'spec_helper'

describe Episode do
  before :each do
    @episode = FactoryGirl.build :episode
  end
  
  it 'can be saved when all fields are valid' do
    @episode.save.should be_true
  end
  
  describe 'the title property' do
    it 'is required' do
      must_have_value @episode, :title
    end
  end
  
  describe 'the short description property' do
    it 'is required' do
      must_have_value @episode, :short_description
    end
  end
  
  describe 'the long description property' do
    it 'is required' do
      must_have_value @episode, :long_description
    end
  end
  
  describe 'the posted time property' do
    it 'is optional' do
      @episode.posted_time = nil
      @episode.save.should be_true
    end
  end
  
  describe 'the posted property' do
    it 'returns true when the posted time is in the past' do
      @episode.posted_time = Time.now - 0.01
      @episode.posted.should be_true
    end

    it 'returns false when the posted time is in the future' do
      @episode.posted_time = Time.now + 0.01
      @episode.posted.should be_false
    end
    
    it 'returns false when the posted time is undefined' do
      @episode.posted_time = nil
      @episode.posted.should be_false
    end
  end
  
  describe 'the small image source property' do
    it 'returns the image at /assets/episodes/:id/small.jpg' do
      @episode.save!
      @episode.small_image_src.should eq "/assets/episodes/#{@episode.id}/small.jpg"
    end
  end
  
  describe 'the large image source property' do
    it 'returns the image at /assets/episodes/:id/large.jpg' do
      @episode.save!
      @episode.large_image_src.should eq "/assets/episodes/#{@episode.id}/large.jpg"
    end
  end
  
  describe 'the video source property' do
    it 'returns the video at /assets/episodes/:id/video.mov' do
      @episode.save!
      @episode.video_src.should eq "/assets/episodes/#{@episode.id}/video.mov"
    end
  end
  
end
