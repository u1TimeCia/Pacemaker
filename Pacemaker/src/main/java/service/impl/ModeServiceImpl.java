package service.impl;

import dao.ModeDao;
import dao.impl.ModeDaoImpl;
import pojo.Mode;
import service.ModeService;

public class ModeServiceImpl implements ModeService {

    ModeDao modeDao = new ModeDaoImpl();

    @Override
    public int saveMode(Mode mode) {
       return modeDao.saveMode(mode);
    }
}
