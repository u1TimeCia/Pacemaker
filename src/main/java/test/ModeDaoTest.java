package test;

import dao.ModeDao;
import dao.impl.ModeDaoImpl;
import org.junit.jupiter.api.Test;
import pojo.Mode;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

class ModeDaoTest {

    @Test
    void saveMode() {
        ModeDao modeDao = new ModeDaoImpl();
        Mode mode = new Mode(1,"AAO",new BigDecimal(1),new BigDecimal(1),new BigDecimal(1),new BigDecimal(1),new BigDecimal(1),new BigDecimal(1),new BigDecimal(1),new BigDecimal(1));
        System.out.println(modeDao.saveMode(mode));
    }
}