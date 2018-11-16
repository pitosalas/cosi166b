require "coursegen"

# bucket for AWS Deployment of the course
AWS_BUCKET = "cosi166b"

# Local directory path for directory of content
CONTENT_PATH = "/mydev/cosi166b"

# Copyright string
COPYRIGHT_STRING = "Copyright (2014-2018) R. Pito Salas, pitosalas@brandeis.edu"

# Course short name
COURSE_SHORT_NAME = "COSI 166b"
COURSE_LONG_NAME = "Capstone Project for Software Engineering"
COURSE_ABBREV = "166b"

# Schedule information. Note that Monday is day 0
LECTURES_SCHEDULE_CONFIG = ScheduleDef.new(
  first_day: "aug-31-2018",
  weekdays: [:tuesday, :friday, :friday],
  start_times: ["12:30", "12:30", "14:00"],
  end_times: ["13:50", "13:50", "16:50"],
  start_time: "12:30",
  end_time: "13:50",
  number: 41,
  skips: ["sep-11-2018", "sep-25-2018", "nov-23-2018", "nov-23-2018"],
)

# Sections in the right hand margin of the page
# Bullet choices are :dash, :star, :plus, :minus
SECTION_CONFIG = [
  SectionDef.new("Introduction", "intro", hidden: false, type: :section, bullet: :star),
  SectionDef.new("Lectures", "lectures", type: :lecture, schedule: LECTURES_SCHEDULE_CONFIG, bullet: :dash),
  SectionDef.new("Term Project", "projects", hidden: false, type: :section),
  SectionDef.new("Background", "background", hidden: false, type: :section),
  SectionDef.new("Topics", "topics", hidden: true, type: :section),
  SectionDef.new("Extras", "extras", hidden: true, type: :section),
]

# Options are:
# bullet_style: css style for each bullet
STYLING_CONFIG = {bullet_style: "\"font-size: 60%; width: 10px; color: grey\""}
HOME_PAGE = "/content/intro/00_syllabus.md.erb"
HELPFUL_BOX = false
