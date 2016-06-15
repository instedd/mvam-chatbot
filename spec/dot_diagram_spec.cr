require "./spec_helper"

describe ::MvamBot::Surveys::DotGenerator do
  it "builds valid DOT diagram" do
    dot = MemoryIO.new

    # generate dot from yml
    generator = MvamBot::Surveys::DotGenerator.new(dot)
    flow = MvamBot::Surveys::Flow.from_yaml(File.read("data/survey.yml"))
    generator.generate(flow)

    # draw using external tool
    Process.run("dot", shell: true, input: dot.rewind, output: nil).success?.should be_true
  end
end
