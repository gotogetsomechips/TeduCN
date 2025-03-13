import cn.tedu.store.mapper.UserMapper;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestUser {
    ApplicationContext ac = new ClassPathXmlApplicationContext("application-dao.xml");

    @Test
    public void testSelectUserByUsername() {
        UserMapper userMapper = (UserMapper) ac.getBean("userMapper", UserMapper.class);
        System.out.println(userMapper.selectUserByUserName("admin"));
    }
}
