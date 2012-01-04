Party.find_or_create_by_name('Democrats') {|c| c.id = 1; c.save}
Party.find_or_create_by_name('Republicans'){|c| c.id = 2; c.save}
Party.find_or_create_by_name('N/A'){|c| c.id = 3; c.save}

Candidate.find_or_create_by_name('Barack Obama'){|c| c.id = 1; c.party_id = 1; c.order = 1; c.image = 'barack_obama.jpg'; c.save}

newt = Candidate.find_or_create_by_name('Newt Gingrich'){|c| c.id = 2; c.party_id = 2; c.order = 1; c.image = 'newt_gingrich.jpg';  c.save}
Candidate.find_or_create_by_name('Mitt Romney'){|c| c.id = 3; c.party_id = 2; c.order = 2; c.image = 'mitt_romney.jpg'; c.save}
Candidate.find_or_create_by_name('Michele Bachmann'){|c| c.id = 4; c.party_id = 2; c.order = 3; c.image = 'michele_bachmann.jpg';  c.save}
Candidate.find_or_create_by_name('Ron Paul'){|c| c.id = 5; c.party_id = 2; c.order = 4; c.image = 'ron_paul.jpg';  c.save}
Candidate.find_or_create_by_name('Rick Santorum'){|c| c.id = 6; c.party_id = 2; c.order =5; c.image = 'rick_santorum.jpg';  c.save}
Candidate.find_or_create_by_name('Rick Perry'){|c| c.id = 7; c.party_id = 2; c.order = 6; c.image = 'rick_perry.jpg';  c.save}
Candidate.find_or_create_by_name('Jon Huntsman Jr'){|c| c.id = 8; c.party_id = 2; c.order = 7; c.image = 'jon_huntsman.jpg';  c.save}

Candidate.find_or_create_by_name('Interviewer'){|c| c.id = 9; c.party_id = 3; c.order = 1; c.save}
Candidate.find_or_create_by_name('Nobody\'s Speaking'){|c| c.id = 10; c.party_id = 3; c.order = 2; c.save}

Category.find_or_create_by_name('The Economy'){|c| c.id = 1; c.save}
Category.find_or_create_by_name('Foreign Policy'){|c| c.id = 2; c.save}
Category.find_or_create_by_name('Health Care'){|c| c.id = 3; c.save}
Category.find_or_create_by_name('Illegal Immigration'){|c| c.id = 4; c.save}
Category.find_or_create_by_name('Taxes'){|c| c.id = 5; c.save}
Category.find_or_create_by_name('Abortion'){|c| c.id = 6; c.save}
Category.find_or_create_by_name('Education'){|c| c.id = 7; c.save}
Category.find_or_create_by_name('Global Warming'){|c| c.id = 8; c.save}
Category.find_or_create_by_name('War on Drugs'){|c| c.id = 9; c.save}
Category.find_or_create_by_name('Civil Liberties'){|c| c.id = 10; c.save}
Category.find_or_create_by_name('National Security'){|c| c.id = 11; c.save}
Category.find_or_create_by_name('Second Amendment/Gun Control'){|c| c.id = 12; c.save}

v = Video.find_or_create_by_title('Gingrich: Courts Are Far Too Powerful') do |v|
  v.id = 1
  v.description  = "At the Fox News Presidential Debate in Sioux City, Newt warns activist judges that \"If you keep attacking the core base of the American Exceptionalism you will find an uprising against you which will re-balance the judiciary. We have a balance of three branches, not a judicial dictatorship in this country.\""
  v.url          = "http://www.youtube.com/watch?v=YyJNyZSy_NY"
  v.video_id     = "YyJNyZSy_NY"
  v.published_at = Time.now
  v.created_at   = Time.now
  v.updated_at   = Time.now
  v.duration     = 24
  v.candidate    = newt
  v.save
end

VideoSegment.find_or_create_by_video_id(v.id) do |vs|
  vs.id         = 1
  vs.offset     = 10
  vs.duration   = 5
  vs.save
end