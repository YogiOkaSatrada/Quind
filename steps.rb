require 'selenium-webdriver'
require 'rubygems'
require 'rspec/expectations'
driver = Selenium::WebDriver.for :chrome

Given("I Open the landing page Quind") do
  driver.navigate.to 'http://dev-quind-insurance.herokuapp.com'
  sleep(5)
end

Then("I going to home") do
  driver.find_element(:xpath,'/html/body/div/div/div/div[1]/ul/li[1]/a').click
  #sleep(10)
end

Then("I going to Info") do
  driver.find_element(:xpath,'/html/body/div/div/div/div[1]/ul/li[2]/a').click
  #sleep(30)
end

Then("I going to produk") do
  driver.find_element(:xpath,'/html/body/div/div/div/div[1]/ul/li[3]/a').click
  #sleep(30)
end

Then("I going to prosedur claim") do
  driver.find_element(:xpath,'/html/body/div/div/div/div[1]/ul/li[4]/a').click
  #sleep(30)
end

Given("I Open the Quind") do
    driver.navigate.to 'http://dev-quind-insurance.herokuapp.com/#/login'
end

Then("I going to Login") do
  driver.find_element(:id,'email').click
end

Then("I enter username") do
  driver.find_element(:id,'email').click
  driver.find_element(:id,'email').send_keys('quind.data.insurance@gmail.com')
  sleep (3)
end

Then("I enter password") do
  driver.find_element(:id,'password').click
  driver.find_element(:id,'password').send_keys('accessadmin')
  driver.find_element(:xpath,'/html/body/div/div/form/button').click
  #driver.save_screenshot('screenshot.png')
    sleep (5)
end

Then("I filter spesifik data apply") do
   driver.find_element(:id,'v-select').click
   driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[1]/select/option[2]').click
   sleep(3)
   driver.find_element(:id,'v-select').click
   driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[1]/select/option[3]').click
   sleep(3)
   driver.find_element(:id,'v-select').click
   driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[1]/select/option[4]').click
   sleep(3)
   driver.find_element(:id,'v-select').click
   driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[1]/select/option[5]').click
   sleep(3)
end

Then("I Search Gust") do
  driver.find_element(:class,'search').click
  sleep(3)
  driver.find_element(:class,'search').send_keys('prabowo')
  sleep(3)
end

Then("I export csv") do
  driver.find_element(:class,'download').click
  sleep(3)
end

Then("I going to manajemen user") do
  driver.find_element(:xpath,'/html/body/div/div/div[1]/div/div[3]/button').click
  sleep(3)
end

Then("I filter spesifik manajemen user") do
  driver.find_element(:id,'v-select').click
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[1]/select/option[2]').click
  sleep(3)
  driver.find_element(:id,'v-select').click
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[1]/select/option[3]').click
  sleep(3)
  driver.find_element(:id,'v-select').click
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[1]/select/option[4]').click
  sleep(3)
  driver.find_element(:id,'v-select').click
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[1]/select/option[5]').click
  sleep(3)
end

Then("I search user") do
  driver.find_element(:class,'search').click
  sleep(3)
  driver.find_element(:class,'search').send_keys('jokowi')
  sleep(3)
end

Then("I Import User csv") do
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div[2]/div[4]/button[1]').click
  sleep(3)
  driver.find_element(:id,'file').click
  sleep(1)
  driver.find_element(:xpath,'//*[@id="boxReset"]/div[2]/button[2]').click
  sleep(1)
  driver.find_element(:class,'cancelButton').click
  sleep(3)
end

Then("I Import polis csv") do
  driver.find_element(:class,'import-polis').click
  sleep(3)
  driver.find_element(:id,'file').click
  sleep(1)
  driver.find_element(:xpath,'//*[@id="boxReset"]/div[2]/button[2]').click
  sleep(1)
  driver.find_element(:class,'cancelButton').click
  sleep(3)
end

Then("I change password") do
  driver.find_element(:class,'gear').click
  sleep(3)
  driver.find_element(:xpath,'/html/body/div/div/div[1]/div/div[5]/div/div/a[2]').click
  sleep(3)
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div/form/input[1]').send_keys('accessadmin')
  sleep(3)
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div/form/input[2]').send_keys('accessadmin')
  sleep(3)
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div/form/input[3]').send_keys('accessadmin')
  sleep(3)
  driver.find_element(:xpath,'/html/body/div/div/div[2]/div/form/button[1]').click
  sleep(3)
end

Then("I logout") do
  driver.find_element(:class,'gear').click
  driver.find_element(:xpath,'/html/body/div/div/div[1]/div/div[5]/div/div/a[1]').click
  sleep(5)
end

Then("I Lupa password") do
  driver.find_element(:xpath,'//*[@id="box"]/a').click
  sleep(3)
end

Then("I enter email") do
  driver.find_element(:xpath,'/html/body/div/div/form/div/input').send_keys('quind.data.insurance@gmail.com')
  sleep(3)
end

Then("I reset password") do
  driver.find_element(:xpath,'/html/body/div/div/form/button').click
  sleep(3)
end
