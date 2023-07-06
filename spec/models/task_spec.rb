require "rails_helper"

describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns true when the title is laundry" do
        task = Task.create!(title: "laundry", description: "clean clothes")

        expect(task.laundry?).to be(true)
      end

      it "returns true when the description is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "laundry")
    
        expect(task.laundry?).to be(true)
      end

      it "returns false when neither the description nor title is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "ya, I'll get to it")
    
        expect(task.laundry?).to be(false)
      end

      it "returns true when the title contains the word laundry" do
        task = Task.create!(title: "Clean my clothes", description: "ya, I'll get to it soon")
    
        expect(task.laundry?).to be(false)

        task = Task.create!(title: "Clean my laundry", description: "ya, I'll get to it soon")

        expect(task.laundry?).to be(true)
      end

      it "is case insensitive when checking if the title contains the word laundry" do
        task = Task.create!(title: "Clean my laundry", description: "ya, I'll get to it soon")

        expect(task.laundry?).to be(true)

        task = Task.create!(title: "Clean my Laundry", description: "ya, I'll get to it soon")

        expect(task.laundry?).to be(true)
      end
      
    end
  end
end