# Add the 2 requires you will need here
require './lib/student'

describe Student do
  describe '#initialize' do #the name of the method that we are testing
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new("Jonathan")
    
      expect(student.name) to be eq("Jonathan")
    end
    # test it has a name
    it 'is given a name' do 
      student = Student.new("Jonathan")
      
      expect(student.name) .to eq("Jonathan")
    end  
    # test it has cookies
    it 'has an empty array of cookies' do
      student = Student.new("Jonathan")

      expect(student.cookies) .to eq([])
    end
    # test it can add cookies
    describe 'Add cookie' do
      it "adds a cookie to our @cookies list" do
        student = Student.new("Jonathan")
        student.add_cookie("Chocolate Chip")
        student.add_cookie("Peanut Butter")
      expect(student.cookies) .to eq(["Chocolate Chip", "Peanut Butter"])
      end 
  end
end
