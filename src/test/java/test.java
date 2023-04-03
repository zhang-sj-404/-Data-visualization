import com.czu.zsj.service.HouseService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
// @WebAppConfiguration("src/main/resources")
// 这个classpath，如果测试的是service就放spring的配置文件，如果是controller就放springmvc的配置文件
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:mybatis-config.xml" })
public class test {

    @Autowired
    private HouseService houseService;

    @Test
    public void getHouseDistrictPrice(){
        houseService.getHouseDistrictPrice("320100").forEach(houseDistrictPrice -> System.out.println(houseDistrictPrice));
    }


    @Test
    public void getHouseAreaPrice(){
        houseService.getHouseAreaPrice("320100","玄武区").forEach(houseDistrictPrice -> System.out.println(houseDistrictPrice));
    }


}
