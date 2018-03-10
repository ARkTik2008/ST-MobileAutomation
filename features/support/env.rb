require "appium_lib"

def caps
  {caps: {
      deviceName: "Name",
      platformName: "Android",
      app:(File.join(File.dirname(__FILE__), "ultimate_converter.apk")),
      appPackage: "com.physphil.android.unitconverterultimate",
      appActivity: "com.physphil.android.unitconverterultimate.MainActivity",
      newCommandTimeOut: "3600"

  }}
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object


def select_menu_item(value)

  current_screen = get_source
  previous_screen = ""

  current_screen == previous_screen
  until (exists {  find_element(id: "design_navigation_view").find_element(xpath:"//android.widget.CheckedTextView[@text='#{value}']")}) || current_screen == previous_screen do
    Appium::TouchAction.new.swipe(start_x: 0.1 , start_y: 0.8 , offset_x: 0 , offset_y: 0.01 , duration: 500).perform
    previous_screen = current_screen
    current_screen = get_source
  end

  if exists { find_element(id: "design_navigation_view").find_element(xpath:"//android.widget.CheckedTextView[@text='#{value}']")}
    find_element(id: "design_navigation_view").find_element(xpath:"//android.widget.CheckedTextView[@text='#{value}']").click
  else
    fail("Element #{value} was not found in menu")
  end
end