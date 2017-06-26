10.times do |blog|
  Blog.create!(
    Title: "My Blog post #{blog}",
    Body: "hey person"
  
  )
end
5.times do |skill|
  Skill.create!(
    titles: "Rails #{skill}",
    percent_utilized: 15
  )  
end

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title:#{portfolio_item}", 
    subtitle: "My great service"
    body: "Hey I love kool stuff",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
    )
  end  