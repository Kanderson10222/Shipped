module BookingsHelper


def boatsMethod
  boats = []
  Boat.all.each do |boat|
  boats.push ([boat.name ,boat.id])
  end
return boats
end


def jobsMethod
    jobs = []
    Job.all.each do |job|
    jobs.push ([job.id ])
  end
    return jobs
  end
end
