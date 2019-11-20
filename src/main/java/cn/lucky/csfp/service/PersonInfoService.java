package cn.lucky.csfp.service;

import cn.lucky.csfp.model.PersonInfo;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

/**
 * @Author:蒋凌鹏
 * @Date:2019/11/7
 * @Explain:csfp
 */
public interface PersonInfoService {
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
    public PageInfo<PersonInfo> findPersonInfoList(Integer pageNum, Integer pageSize);

    /**
     * 添加一条人口信息记录
     * @param personInfo
     * @return
     */
    public Integer insertPersonInfo(PersonInfo personInfo);
    /**
     * 修改一条记录
     * @param personInfo
     * @return
     */
    public Integer updatePersonInfo( PersonInfo personInfo);

    /**
     * 删除一条记录
     * @param deleteId
     * @return
     */
    public Integer deletePersonInfo(@Param("deleteId") Integer deleteId);
}
