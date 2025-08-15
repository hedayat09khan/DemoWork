from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn

class custom_alert_keywords:
    @keyword
    def get_alert_text(self):
        selib = BuiltIn().get_library_instance('SeleniumLibrary')
        driver = selib.driver
        alert = driver.switch_to.alert
        return alert.text
