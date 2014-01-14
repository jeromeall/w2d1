require './employee'
require 'spec_helper'

describe Employee do
	
	before (:each) do
		@employee = Employee.new("Jerome", "Bauce", "THE MAN")
		@employee1 = Employee.new("Bob", "Not Bauce", "THE OTHER MAN")
	end



	it "has a name" do
		@employee.name.should eq("Jerome")

    # this syntax also works
    # employee.name.should == "YourName"
  end		

  it "has a title" do
  	@employee.title.should eq("Bauce")
  	@employee1.title.should eq("Not Bauce")
  end

  it "can change names" do
  	@employee.name = "Bernard"
  	@employee.name.should eq("Bernard")
  end

  it "hates its boss" do
  	@employee.hate_boss.should eq("I hate my boss: THE MAN")
  end

  it "introduces itself" do
  		@employee.introduce.should puts "Hi, my name is Jerome."
  end

  it "updates employee count" do
  	Employee.count.should == 2
  end


	
after (:each) do
	Employee.resign
	Employee.resign
end
	

end