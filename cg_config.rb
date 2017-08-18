require 'coursegen'

# bucket for AWS Deployment of the course
AWS_BUCKET = "cosi166b"

# Local directory path for directory of content
CONTENT_PATH = "/mydev/cosi166b"

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2017) R. Pito Salas, pitosalas@brandeis.edu"

# Course short name
COURSE_SHORT_NAME = "COSI 166b"
COURSE_LONG_NAME = "Software Engineering"
COURSE_ABBREV = "166b"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "sep-1-2017",
  weekdays: [:tuesday, :friday, :friday],
  start_times: ["12:30", "12:30", "14:00"],
  end_times: ["13:50", "13:50", "16:00"],
  start_time: "15:30",
  end_time: "16:50",
  number: 46,
  skips: ["sep-22-2017", "nov-24-2017"])

# Sections in the right hand margin of the page
# Bullet choices are :dash, :star, :plus, :minus
SECTION_CONFIG = [
  SectionDef.new("Introduction", "intro", hidden: false, type: :section, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Term Project", "projects", hidden: false, type: :section),
  SectionDef.new("Background", "background", hidden: false, type: :section),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section)
]

# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: "\"font-size: 60%; width: 10px; color: grey\""}
HOME_PAGE = "/content/intro/00_syllabus.md.erb"
HELPFUL_BOX = false
