require './lib/student'

RSpec.describe Student do
    xit 'exists' do
        student = Student.new('Sophocles', 1)
        
        expect(student).to be_a Student
        expect(student.name).to eq("Sophocles")
        expect(student.mod).to eq 1
    end
    
    xit 'has a set of skills' do
        student = Student.new('Sophocles', 1)
        
        expect(student.skills).to eq([])
    end
    
    xit 'tell me what mod you are in' do
        student = Student.new('Sophocles', 1)

        expect(student.say_mod).to eq("I am in Mod #{mod}")
    end
        
    xit 'learns a skill' do
    student = Student.new('Sophocles', 1)
    student.learn("testing")

    expect(student.skill).to eq(["testing"])
    end

    
end
