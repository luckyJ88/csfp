package cn.lucky.csfp.service;

import cn.lucky.csfp.dao.PersonInfoDao;
import cn.lucky.csfp.model.PersonInfo;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author:蒋凌鹏
 * @Date:2019/11/7
 * @Explain:csfp
 */
@Service("personInfoService")
public class PersonInfoServiceImpl implements PersonInfoService {

    @Autowired
    private PersonInfoDao personInfoDao;
    /**
     * 根据身份证号查询对应的人口信息
     *
     * @param idCard
     * @return
     */
    @Override
    public PersonInfo findPersonInfoByIdCard(String idCard) {
        return personInfoDao.findPersonInfoByIdCard(idCard);
    }

    /**
     * 查询所有的人口信息记录
     *
     * @return
     */
    @Override
    public PageInfo<PersonInfo> findPersonInfoList(Integer pageNum,Integer pageSize) {
        Page<PersonInfo> page = PageHelper.startPage(pageNum,pageSize);
        List<PersonInfo> personInfos = personInfoDao.findPersonInfoByList();
        PageInfo<PersonInfo> pagePersonInfos = new  PageInfo<>(personInfos);
        return pagePersonInfos;
    }

    /**
     * 添加一条人口信息记录
     *
     * @param personInfo
     * @return
     */
    @Override
    public Integer insertPersonInfo(PersonInfo personInfo) {
        System.out.println("添加方法，service层到了");
        return personInfoDao.insertPersonInfo(personInfo);
    }

    /**
     * 修改一条记录
     *
     * @param personInfo
     * @return
     */
    @Override
    public Integer updatePersonInfo(PersonInfo personInfo) {
        return personInfoDao.updatePersonInfo(personInfo);
    }

    /**
     * 删除一条记录
     *
     * @param deleteId
     * @return
     */
    @Override
    public Integer deletePersonInfo(Integer deleteId) {
        return personInfoDao.deletePersonInfo(deleteId);
    }
}
