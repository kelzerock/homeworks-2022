# frozen_string_literal: true

require_relative '../../homework'
require_relative '../../mentor'
require_relative '../../student'

RSpec.describe Homework do
  let(:student) { Student.new(name: 'student_name', surname: 'student_surname') }
  let(:mentor) { Mentor.new(name: 'mentor_name', surname: 'mentor_surname') }
  let(:test_homework) do
    described_class.new('hw_title', 'hw_description', student, mentor)
  end

  it 'check right student name' do
    expect(test_homework.student.name).to eq('student_name')
  end

  it 'check right student surname' do
    expect(test_homework.student.surname).to eq('student_surname')
  end

  it 'check right mentor name' do
    expect(test_homework.mentor.name).to eq('mentor_name')
  end

  it 'check right mentor surname' do
    expect(test_homework.mentor.surname).to eq('mentor_surname')
  end

  context 'when checked method print' do
    it 'method return instance of Array' do
      expect(test_homework.print_homework).to be_an_instance_of(Array)
    end

    it 'method return correct data' do
      expect(test_homework.print_homework).to eq(%w[hw_title hw_description])
    end
  end
end
