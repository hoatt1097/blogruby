class SayController < ApplicationController 
    def hello
        @time = Time.now
    end

    def goodby
    end
end