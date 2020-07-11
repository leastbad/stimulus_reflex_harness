Post.destroy_all
puts "All posts destroyed."
100.times do
  Post.create title: Faker::Name.name
end
puts "100 posts with fake titles created."