package edu.uc.test;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
//告诉Junit spring配置文档在哪
@ContextConfiguration({"classpath:applicationContext.xml"})
public class BaseTest {

}
