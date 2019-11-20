package cn.lucky.csfp.controller;

import cn.lucky.csfp.model.PersonInfo;
import cn.lucky.csfp.service.PersonInfoService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

/**
 * @Author:蒋凌鹏
 * @Date:2019/11/7
 * @Explain:csfp
 */
@Controller
public class PersonInfoController {

    @Autowired
    private PersonInfoService personInfoService;

    /**
     * 后台首页
     * @return
     */
    @GetMapping(value = "/index" )
    public String index(){
        return "index";
    }


    @GetMapping(value = {"","/","/main"})
    public String main(){
        return "main";
    }

    @GetMapping(value = "/addPersonInfoView")
    public String addPersonInfoView(){
        return "person_info/personInfo_add";
    }



    @GetMapping(value = "/personInfo_page")
    public String personInfo_page(){
        return "person_info/personInfo";
    }


    /**
     * 人口信息管理页
     * @return
     */
    @GetMapping(value = "/personInfo")
    @ResponseBody
    public Map<String,Object> personInfo(@RequestParam("page") Integer page,@RequestParam("limit") Integer limit){
        PageInfo<PersonInfo>  personInfos = personInfoService.findPersonInfoList(page,limit);
            /**
             * 封装为layui默认的数据格式
             */
            Map<String,Object> res = new HashMap<>();
            res.put("code",200);
            res.put("msg","success");
            res.put("total",personInfos.getTotal());
            res.put("data",personInfos.getList());
        return res;
    }


    /**
     * 添加人口信息记录
     * @param
     * @return
     */
    @PostMapping(value = "/insertPersonInfo")
    @ResponseBody
    public Integer addPersonInfo(@RequestBody PersonInfo personInfo){
        Integer flag = personInfoService.insertPersonInfo(personInfo);
        System.out.println(flag);
        if (flag>0){
            return 1;
        }else{
            return 0;
        }

    }


    /**
     * 根据身份证号查询一条记录
     * @param idCard
     * @return
     * @throws ParseException
     */
    @GetMapping(value = "/findByIdCard")
    @ResponseBody
    public Map<String,Object> find( @RequestParam("idCard") String idCard) throws ParseException {
        Map<String,Object> res = new HashMap<>();
        PersonInfo personInfo =  personInfoService.findPersonInfoByIdCard(idCard);
        res.put("code",200);
        res.put("msg","success");
        res.put("total",1);
        res.put("data",personInfo);
        return res;
    }


    /**
     * 修改一条人口信息
     * @param personInfo
     * @return
     */
    @PostMapping(value = "/updatePersonInfo")
    @ResponseBody
    public Integer updatePersonInfo(@RequestBody PersonInfo personInfo){
            return personInfoService.updatePersonInfo(personInfo);
    }

    /**
     * 删除一条人口信息
     * @param deleteId
     * @return
     */
    @GetMapping(value = "/deletePersonInfo")
    @ResponseBody
    public Integer deletePersonInfo(@RequestParam("deleteId") Integer deleteId){
        return personInfoService.deletePersonInfo(deleteId);
    }




    @GetMapping(value = "/deletes")
    @ResponseBody
    public Integer insertTest(@RequestParam("deleteIds[]") Integer[] deleteIds){
        try {
            for (int i = 0;i<deleteIds.length;i++){
                personInfoService.deletePersonInfo(deleteIds[i]);
            }
        }catch (Exception e){
            return 0;
        }
        return 1;

    }
}
