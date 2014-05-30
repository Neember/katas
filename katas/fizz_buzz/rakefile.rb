require 'stringio'
require 'rspec'
require '../../lib/formatter/judge_runner_formatter'

task :judge do
  err = StringIO.new
  out = StringIO.new
  formatter = JudgeRunnerFormatter.new
  RSpec::Core::Runner.run(['-fjson', 'judge'], err, out)

  results = JSON::parse(out.string)
  total_failure = results['summary']['failure_count']

  if total_failure.zero?
    formatter.status = :passed
    formatter << 'Congratulations! You have solved the kata!'
    formatter << 'Try to refactor or redo the kata with a different approach.'
  else
    formatter.status = :failed
    formatter << 'Your solution does not pass the judge. Please try again. Did you miss a user case you have not considered?'
    formatter << 'If you would like to give up, run "rake judge SHOW_FAILURE=true" to display the failing test cases as a hint.'

    if ENV['SHOW_FAILURE']
      formatter << "\nHints: "
      results['examples'].each_with_index do |result, index|
        if result['status'] == 'failed'
          formatter << "\n#{++index}) " + result['full_description']
          formatter << result['exception']['message']
        end
      end
    end
  end

  formatter.flush
end

