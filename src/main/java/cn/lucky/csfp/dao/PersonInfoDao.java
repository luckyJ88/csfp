package cn.lucky.csfp.dao;

import cn.lucky.csfp.model.PersonInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author:蒋凌鹏
 * @Date:2019/11/7
 * @Explain:csfp
 */
public interface PersonInfoDao {
    /**
     * 根据身份证号查询对应的人口信息
     * @param idCard
     * @return
     */
    public PersonInfo findPersonInfoByIdCard(String idCard);

    /**
     * 查询所有的人口信息记录
     * @return
     */
    public List<PersonInfo> findPersonInfoByList();

    /**
     * 添加一条记录
     * @param personInfo
     * @return
     */
    public Integer insertPersonInfo(@Param("personInfo") PersonInfo personInfo);


    /**
     * 修改一条记录
     * @param personInfo
     * @return
     */
    public Integer updatePersonInfo(@Param("personInfo") PersonInfo personInfo);

    /**
     * 删除一条记录
     * @param deleteId
     * @return
     */
    public Integer deletePersonInfo(@Param("deleteId") Integer deleteId);
}
