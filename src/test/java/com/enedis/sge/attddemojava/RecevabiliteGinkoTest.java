package com.enedis.sge.attddemojava;


import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"classpath:features/recevabiliteginko.feature"},
        plugin = {"json:target/jsonReports/cucumber-json-report.json"},
        glue = {"com.enedis.sge.attddemojava"})
public class RecevabiliteGinkoTest {

}