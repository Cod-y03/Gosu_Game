require 'gosu'

class Tutorial < Gosu::Window
    def initialize
        super 640, 480
        self.caption = "Tutorial Game"

        @background_image = Gosu::Image.new("media/space.png", :tileable => true)
    end

    def update
        #...
    end

    def draw
        @background_image.draw(0,0,0)
    end
end

Tutorial.new.show

class Player
    def initialize
        @image = Gosu::Image.new("media/starfighter.bmp")
        @x = @y = @vel_x = @vel_y = @angle = 0.0
        @score = 0
    end

    def warp(x, y)
        @x, @y = x, vel_y
    end

    def turn_right