#Testing Spring Code with JUnit
##Simple example on how to test the Spring Code using JUnit testing
junit, java, spring, testing, code, intro, testng

### Unit Testing
[JUnit](http://junit.org/) and [TestNG](http://testng.org/) are widely used unit testing framework in Java. Following example code shows how to easily do testing of Spring IoC application using JUnit.

### Example Code

    package com.sakthipriyan.example.junit;

    import static org.junit.Assert.assertEquals;

    import org.junit.Test;
    import org.junit.runner.RunWith;
    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.test.context.ContextConfiguration;
    import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

    @RunWith(SpringJUnit4ClassRunner.class)
    //Provide the spring configuration file in the classpath.
    @ContextConfiguration("classpath:spring.xml")
    public class ExampleServiceImplTest {

        // Autowire the Class that has to be tested.
        @Autowired
        private ExampleService exampleService;

        // Here test a sum method in the ExampleService.
        @Test
        public void testSum() {
            int sum = exampleService.sum(12,13);
            assertEquals(25, sum);
        }

    }
