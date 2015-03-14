require "helper"
require "conferencer/conference"

class ConferenceTest < ConferencerTest
  def setup
    @conference = Conferencer::Conference.new(talks_fixture)
  end

  def test_build_schedule
    @conference.build_schedule!

    assert_equal [
      "Writing Fast Tests Against Enterprise Rails 60min",
      "Overdoing it in Python 45min",
      "Lua for the Masses 30min",
      "Ruby Errors from Mismatched Gem Versions 45min",
      "Lunch",
      "Ruby on Rails: Why We Should Move On 60min",
      "Common Ruby Errors 45min",
      "Pair Programming vs Noise 45min",
      "Programming in the Boondocks of Seattle 30min",
      "Ruby vs. Clojure for Back-End Development 30min",
      "User Interface CSS in Rails Apps 30min",
      "Networking Event"
    ], @conference.track_1.map(&:title)

    assert_equal [
      "Communicating Over Distance 60min",
      "Rails Magic 60min",
      "Woah 30min",
      "Sit Down and Write 30min",
      "Lunch",
      "Accounting-Driven Development 45min",
      "Clojure Ate Scala (on my project) 45min",
      "A World Without HackerNews 30min",
      "Ruby on Rails Legacy App Maintenance 60min",
      "Rails for Python Developers lightning",
      "Networking Event"
    ], @conference.track_2.map(&:title)
  end
end
