require_relative 'timer'

class Animation
  def initialize(frames_per_second, frames)
    @frames = frames
    @timer = Timer::Looping.new(1.0/frames_per_second)     
    @current_idx = 0
  end

  def update(seconds_elapsed)
    @timer.update(seconds_elapsed) do
      @current_idx = (@current_idx + 1) % @frames.size
    end
  end

  def frame
    @frames[@current_idx]
  end
end
