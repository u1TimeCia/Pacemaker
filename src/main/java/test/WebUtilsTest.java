package test;

import org.junit.jupiter.api.Test;
import utils.WebUtils;

import static org.junit.jupiter.api.Assertions.*;

class WebUtilsTest {

    @Test
    void parseInt() {
        System.out.println(WebUtils.parseInt("123", 1));
    }

    @Test
    void findNumStr() {
        System.out.println(WebUtils.findNumStr(null));
    }
}