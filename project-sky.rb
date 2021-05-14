require 'selenium-webdriver'

#instanciar local do seu webdriver 
Selenium::WebDriver::Chrome::Service.driver_path = "C:/Users/lucas/Desktop/Drivers/chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 10
driver.manage.window.maximize

#Acessando HomePage
driver.navigate.to("http://www.sky.com.br/")

#clica continuar 
driver.find_element(xpath:'//*[@id="portlet_com_liferay_journal_content_web_portlet_JournalContentPortlet_INSTANCE_YQcCxObpxg0J"]/div/div[2]/div/div[2]/div/div/div/div[1]/button').click()
sleep 4   

#aceita cookies
driver.find_element(xpath:'//*[@id="wrap-aviso-cookie"]/div[1]/div/div/div/div[3]/div/div/button').click()

#programaçao
driver.find_element(xpath:'//*[@id="main-menu"]/div[2]/div[2]/ul[1]/li[3]/a').click()
sleep 4   

driver.find_element(xpath: '//*[@id="main-menu"]/div[2]/div[2]/ul[1]/li[3]').click() 

#lista de canais
driver.find_element(xpath: '//*[@id="portlet_com_liferay_journal_content_web_portlet_JournalContentPortlet_INSTANCE_aKJUz209eKa8"]/div/div[2]/div/div[2]/section/div/div[1]/div/div/a[2]').click() 

#procura canal/digita
driver.find_element(id:'searchChannel').send_keys "BAND"
puts "BAND"

sleep 4    
