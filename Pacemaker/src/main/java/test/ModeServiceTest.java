package test;

import org.junit.jupiter.api.Test;
import pojo.Mode;
import service.ModeService;
import service.impl.ModeServiceImpl;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

class ModeServiceTest {

    @Test
    void saveMode() {
        ModeService modeService = new ModeServiceImpl();
        System.out.println(modeService.saveMode(new Mode(1,"AAO",new BigDecimal(1.2),new BigDecimal(1.2),new BigDecimal(1.2),new BigDecimal(1.2),new BigDecimal(1.2),new BigDecimal(1.2),new BigDecimal(1.2),new BigDecimal(1.2))));

    }
}