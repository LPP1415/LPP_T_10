require './lib/exam/examen'
require './lib/question/simpleChoice/base'
require './lib/nodelist/list'
describe Examen do
	before :each do
            @p1 = SimpleChoice.new(:text => '2+3=2',:right =>'5'.:distractors=>[6,4,3,7],:dif => 10)
	    @list = Lista.new()
	    @list.add(@p1)        			
	    @ex = Examen.new(list)
	end
	content "constructor" do
	    it "constructor correcto" do
		expect(@ex.acierto) == 0
		expect(@ex.fallo) == 0
                expect(@ex.list) == @list
            end
	end
