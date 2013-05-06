class Episode < ActiveRecord::Base
  attr_accessible :description, :name, :seconds, :published_on, :timecode
  validates_presence_of :name, :description
  scope :published, where('published_on <= ?', Time.now.to_date)

  has_paper_trail

  def timecode
    if seconds
      min, sec = *seconds.divmod(60)
      [min, sec.to_s.rjust(2, '0')].join(':')
    end
  end

  def timecode=(timecode)
    if timecode.present?
      min, sec = *timecode.split(':').map(&:to_i)
      self.seconds = min*60 + sec
    end
  end

  def minutes
    (seconds/60.0).round if seconds
  end
end
