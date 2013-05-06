task :filler_specs => :environment do
  20.times do |n|
    to = Rails.root.join("spec/features/filler/episodes_#{"%02d" % (n+1)}_spec.rb")
    FileUtils.ln_s("../episodes_spec.rb", to)
    to = Rails.root.join("spec/models/filler/episode_#{"%02d" % (n+1)}_spec.rb")
    FileUtils.ln_s("../episode_spec.rb", to)
  end
end
