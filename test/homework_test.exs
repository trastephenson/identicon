defmodule HomeworkTest do
  # Import helpers
  use Hound.Helpers
  use ExUnit.Case

  import Help
  


  # Start hound session and destroy when tests are run
  hound_session()



  
      
  test "broken_images" do
    navigate_to ("https://the-internet.herokuapp.com/broken_images")
      elements = find_all_elements(:tag, "img") 
      IO.inspect(elements, label: :element)
      Enum.each(elements,fn x -> 
        src = attribute_value(x,"src")
        IO.inspect(src)
        result = navigate_to(src)
        IO.inspect(result)

      end)
  end


end
