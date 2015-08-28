package com.et59.cus.action;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.TBookclub;
import com.et59.cus.domain.entity.TBookclubExample;
import com.et59.cus.domain.entity.TBookclubExample.Criteria;
import com.et59.cus.domain.entity.THonoraward;
import com.et59.cus.domain.entity.THonorawardExample;
import com.et59.cus.domain.entity.TLearnact;
import com.et59.cus.domain.entity.TLearnactExample;
import com.et59.cus.domain.entity.TSocialevent;
import com.et59.cus.domain.entity.TSocialeventExample;
import com.et59.cus.domain.entity.TStudentaward;
import com.et59.cus.domain.entity.TStudentawardExample;
import com.et59.cus.domain.entity.ex.Pager;
import com.et59.cus.service.LocalServiceEX;
import java.io.IOException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;

public class StuTrainAction
  extends BaseAction
{
  private static final long serialVersionUID = 1L;
  Logger log = Logger.getLogger(getClass());
  public TBookclub bookclub;
  public THonoraward honoraward;
  public TLearnact learnact;
  public TSocialevent socialevent;
  public TStudentaward studentaward;
  public List<THonoraward> honorawardList;
  public List<TStudentaward> stuawardList;
  public List<TLearnact> learnactList;
  public List<TBookclub> bookClubList;
  public List<TSocialevent> socilList;
  
  public List<TBookclub> getBookClubList()
  {
    return this.bookClubList;
  }
  
  public void setBookClubList(List<TBookclub> bookClubList)
  {
    this.bookClubList = bookClubList;
  }
  
  public List<TSocialevent> getSocilList()
  {
    return this.socilList;
  }
  
  public void setSocilList(List<TSocialevent> socilList)
  {
    this.socilList = socilList;
  }
  
  public List<TLearnact> getLearnactList()
  {
    return this.learnactList;
  }
  
  public void setLearnactList(List<TLearnact> learnactList)
  {
    this.learnactList = learnactList;
  }
  
  public List<TStudentaward> getStuawardList()
  {
    return this.stuawardList;
  }
  
  public void setStuawardList(List<TStudentaward> stuawardList)
  {
    this.stuawardList = stuawardList;
  }
  
  public List<THonoraward> getHonorawardList()
  {
    return this.honorawardList;
  }
  
  public void setHonorawardList(List<THonoraward> honorawardList)
  {
    this.honorawardList = honorawardList;
  }
  
  public String bookclubindex()
  {
    return "bookclubindex";
  }
  
  public String honorawardindex()
  {
    return "honorawardindex";
  }
  
  public String learnactindex()
  {
    return "learnactindex";
  }
  
  public String socialeventindex()
  {
    return "socialeventindex";
  }
  
  public String studentawardindex()
  {
    return "studentawardindex";
  }
  
  public void querybookclub()
  {
    String page = this.request.getParameter("page");
    String rows = this.request.getParameter("rows");
    try
    {
      TBookclubExample tBookclubExample = new TBookclubExample();
      Pager pager = this.localServiceEXProxy.querybookclub(tBookclubExample, 
        Integer.valueOf(rows).intValue(), Integer.valueOf(page).intValue());
      super.reponseWriter(JSON.toJSONString(pager));
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
  }
  
  public TBookclub getbookclub()
  {
    TBookclub tBookclub = new TBookclub();
    tBookclub.setBookclubname(this.request.getParameter("bookclubname"));
    tBookclub.setComments(this.request.getParameter("comments"));
    tBookclub.setConvener(this.request.getParameter("convener"));
    tBookclub.setMaincomment(this.request.getParameter("maincomment"));
    tBookclub.setParticipants(this.request.getParameter("participants"));
    tBookclub.setPlace(this.request.getParameter("place"));
    tBookclub.setRemark(this.request.getParameter("remark"));
    tBookclub.setSpeaker(this.request.getParameter("speaker"));
    tBookclub.setSubjects(this.request.getParameter("subjects"));
    tBookclub.setTime(this.request.getParameter("time"));
    return tBookclub;
  }
  
  public void savebookclub()
  {
    boolean flag = false;
    try
    {
      TBookclub tBookclub = getbookclub();
      this.localServiceEXProxy.savebookclub(tBookclub);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void updatebookclub()
  {
    boolean flag = false;
    try
    {
      String bookclubid = this.request.getParameter("id");
      
      TBookclub tBookclub = getbookclub();
      tBookclub.setBookclubid(Long.valueOf(bookclubid));
      this.localServiceEXProxy.updatebookclub(tBookclub);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void deletebookclub()
  {
    boolean flag = false;
    String id = this.request.getParameter("id");
    try
    {
      Long idL = Long.valueOf(Long.parseLong(id));
      TBookclubExample tpexample = new TBookclubExample();
      tpexample.createCriteria().andBookclubidEqualTo(idL);
      this.localServiceEXProxy.deletebookclub(tpexample);
      flag = true;
    }
    catch (NumberFormatException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    finally
    {
      super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
    }
  }
  
  public void queryhonoraward()
  {
    String page = this.request.getParameter("page");
    String rows = this.request.getParameter("rows");
    try
    {
      THonorawardExample tHonorawardExample = new THonorawardExample();
      Pager pager = this.localServiceEXProxy.queryhonoraward(
        tHonorawardExample, Integer.valueOf(rows).intValue(), 
        Integer.valueOf(page).intValue());
      super.reponseWriter(JSON.toJSONString(pager));
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
  }
  
  public THonoraward gethonoraward()
  {
    THonoraward tHonoraward = new THonoraward();
    tHonoraward.setGrantorg(this.request.getParameter("grantorg"));
    tHonoraward.setGranttime(this.request.getParameter("granttime"));
    tHonoraward.setHonorname(this.request.getParameter("honorname"));
    tHonoraward.setHonortype(this.request.getParameter("honortype"));
    tHonoraward.setRemark(this.request.getParameter("remark"));
    tHonoraward.setTeachernames(this.request.getParameter("teachernames"));
    tHonoraward.setTeammember(this.request.getParameter("teammember"));
    return tHonoraward;
  }
  
  public void savehonoraward()
  {
    boolean flag = false;
    try
    {
      THonoraward tHonoraward = gethonoraward();
      this.localServiceEXProxy.savehonoraward(tHonoraward);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void updatehonoraward()
  {
    boolean flag = false;
    try
    {
      String honorawardid = this.request.getParameter("id");
      
      THonoraward tHonoraward = gethonoraward();
      tHonoraward.setHonorawardid(Long.valueOf(honorawardid));
      this.localServiceEXProxy.updatehonoraward(tHonoraward);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void deletehonoraward()
  {
    boolean flag = false;
    String id = this.request.getParameter("id");
    try
    {
      Long idL = Long.valueOf(Long.parseLong(id));
      THonorawardExample tpexample = new THonorawardExample();
      tpexample.createCriteria().andHonorawardidEqualTo(idL);
      this.localServiceEXProxy.deletehonoraward(tpexample);
      flag = true;
    }
    catch (NumberFormatException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    finally
    {
      super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
    }
  }
  
  public void querylearnact()
  {
    String page = this.request.getParameter("page");
    String rows = this.request.getParameter("rows");
    try
    {
      TLearnactExample tLearnactExample = new TLearnactExample();
      Pager pager = this.localServiceEXProxy.querylearnact(tLearnactExample, 
        Integer.valueOf(rows).intValue(), Integer.valueOf(page).intValue());
      super.reponseWriter(JSON.toJSONString(pager));
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
  }
  
  public TLearnact getlearnact()
  {
    TLearnact tLearnact = new TLearnact();
    tLearnact.setActname(this.request.getParameter("actname"));
    tLearnact.setActplace(this.request.getParameter("actplace"));
    tLearnact.setActtime(this.request.getParameter("acttime"));
    tLearnact.setExpertnames(this.request.getParameter("expertnames"));
    tLearnact.setRemark(this.request.getParameter("remark"));
    tLearnact.setStudentnames(this.request.getParameter("studentnames"));
    tLearnact.setSubjects(this.request.getParameter("subjects"));
    tLearnact.setTeachernames(this.request.getParameter("teachernames"));
    return tLearnact;
  }
  
  public void savelearnact()
  {
    boolean flag = false;
    try
    {
      TLearnact tLearnact = getlearnact();
      this.localServiceEXProxy.savelearnact(tLearnact);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void updatelearnact()
  {
    boolean flag = false;
    try
    {
      String learnactid = this.request.getParameter("id");
      
      TLearnact tLearnact = getlearnact();
      tLearnact.setActid(Long.valueOf(learnactid));
      this.localServiceEXProxy.updatelearnact(tLearnact);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void deletelearnact()
  {
    boolean flag = false;
    String id = this.request.getParameter("id");
    try
    {
      Long idL = Long.valueOf(Long.parseLong(id));
      TLearnactExample tpexample = new TLearnactExample();
      tpexample.createCriteria().andActidEqualTo(idL);
      this.localServiceEXProxy.deletelearnact(tpexample);
      flag = true;
    }
    catch (NumberFormatException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    finally
    {
      super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
    }
  }
  
  public void querysocialevent()
  {
    String page = this.request.getParameter("page");
    String rows = this.request.getParameter("rows");
    try
    {
      TSocialeventExample tSocialeventExample = new TSocialeventExample();
      Pager pager = this.localServiceEXProxy.querysocialevent(tSocialeventExample, 
        Integer.valueOf(rows).intValue(), Integer.valueOf(page).intValue());
      super.reponseWriter(JSON.toJSONString(pager));
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
  }
  
  public TSocialevent getsocialevent()
  {
    TSocialevent tSocialevent = new TSocialevent();
    tSocialevent.setEventname(this.request.getParameter("eventname"));
    tSocialevent.setEventplace(this.request.getParameter("eventplace"));
    tSocialevent.setEventtime(this.request.getParameter("eventtime"));
    tSocialevent.setEventtype(this.request.getParameter("eventtype"));
    tSocialevent.setIstogether(this.request.getParameter("istogether"));
    tSocialevent.setRemark(this.request.getParameter("remark"));
    tSocialevent.setStudents(this.request.getParameter("students"));
    tSocialevent.setTeachernames(this.request.getParameter("teachernames"));
    tSocialevent.setUnitname(this.request.getParameter("unitname"));
    tSocialevent.setWebsite(this.request.getParameter("website"));
    return tSocialevent;
  }
  
  public void savesocialevent()
  {
    boolean flag = false;
    try
    {
      TSocialevent tSocialevent = getsocialevent();
      this.localServiceEXProxy.savesocialevent(tSocialevent);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void updatesocialevent()
  {
    boolean flag = false;
    try
    {
      String eventid = this.request.getParameter("id");
      
      TSocialevent tSocialevent = getsocialevent();
      tSocialevent.setEventid(Long.valueOf(eventid));
      this.localServiceEXProxy.updatesocialevent(tSocialevent);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void deletesocialevent()
  {
    boolean flag = false;
    String id = this.request.getParameter("id");
    try
    {
      Long idL = Long.valueOf(Long.parseLong(id));
      TSocialeventExample tpexample = new TSocialeventExample();
      tpexample.createCriteria().andEventidEqualTo(idL);
      this.localServiceEXProxy.deletesocialevent(tpexample);
      flag = true;
    }
    catch (NumberFormatException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    finally
    {
      super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
    }
  }
  
  public void querystudentaward()
  {
    String page = this.request.getParameter("page");
    String rows = this.request.getParameter("rows");
    try
    {
      TStudentawardExample tStudentawardExample = new TStudentawardExample();
      Pager pager = this.localServiceEXProxy.querystudentaward(tStudentawardExample, 
        Integer.valueOf(rows).intValue(), Integer.valueOf(page).intValue());
      super.reponseWriter(JSON.toJSONString(pager));
    }
    catch (IOException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
  }
  
  public TStudentaward getstudentaward()
  {
    TStudentaward tStudentaward = new TStudentaward();
    tStudentaward.setAwardname(this.request.getParameter("awardname"));
    tStudentaward.setAwardtype(this.request.getParameter("awardtype"));
    tStudentaward.setGrantorg(this.request.getParameter("grantorg"));
    tStudentaward.setGranttime(this.request.getParameter("granttime"));
    tStudentaward.setRemark(this.request.getParameter("remark"));
    tStudentaward.setStuname(this.request.getParameter("stuname"));
    tStudentaward.setStuno(this.request.getParameter("stuno"));
    tStudentaward.setStuprofession(this.request.getParameter("stuprofession"));
    tStudentaward.setTeachernames(this.request.getParameter("teachernames"));
    return tStudentaward;
  }
  
  public void savestudentaward()
  {
    boolean flag = false;
    try
    {
      TStudentaward tStudentaward = getstudentaward();
      this.localServiceEXProxy.savestudentaward(tStudentaward);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void updatestudentaward()
  {
    boolean flag = false;
    try
    {
      String awardid = this.request.getParameter("id");
      
      TStudentaward tStudentaward = getstudentaward();
      tStudentaward.setAwardid(Long.valueOf(awardid));
      this.localServiceEXProxy.updatestudentaward(tStudentaward);
      flag = true;
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
  }
  
  public void deletestudentaward()
  {
    boolean flag = false;
    String id = this.request.getParameter("id");
    try
    {
      Long idL = Long.valueOf(Long.parseLong(id));
      TStudentawardExample tpexample = new TStudentawardExample();
      tpexample.createCriteria().andAwardidEqualTo(idL);
      this.localServiceEXProxy.deletestudentaward(tpexample);
      flag = true;
    }
    catch (NumberFormatException e)
    {
      e.printStackTrace();
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    finally
    {
      super.reponseWriter(JSON.toJSONString(Boolean.valueOf(flag)));
    }
  }
  
  public TBookclub getBookclub()
  {
    return this.bookclub;
  }
  
  public void setBookclub(TBookclub bookclub)
  {
    this.bookclub = bookclub;
  }
  
  public THonoraward getHonoraward()
  {
    return this.honoraward;
  }
  
  public void setHonoraward(THonoraward honoraward)
  {
    this.honoraward = honoraward;
  }
  
  public TLearnact getLearnact()
  {
    return this.learnact;
  }
  
  public void setLearnact(TLearnact learnact)
  {
    this.learnact = learnact;
  }
  
  public TSocialevent getSocialevent()
  {
    return this.socialevent;
  }
  
  public void setSocialevent(TSocialevent socialevent)
  {
    this.socialevent = socialevent;
  }
  
  public TStudentaward getStudentaward()
  {
    return this.studentaward;
  }
  
  public void setStudentaward(TStudentaward studentaward)
  {
    this.studentaward = studentaward;
  }
  
  public String doQueryhonoraward()
  {
    try
    {
      THonorawardExample tHonorawardExample = new THonorawardExample();
      

      Pager pager = this.localServiceEXProxy.queryhonoraward(
        tHonorawardExample, Integer.valueOf("1000").intValue(), 
        Integer.valueOf("1").intValue());
      this.honorawardList = ((List)pager.getRows());
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    return "stut_honoraward";
  }
  
  public String doQuerystudentaward()
  {
    try
    {
      TStudentawardExample tStudentawardExample = new TStudentawardExample();
      

      Pager pager = this.localServiceEXProxy.querystudentaward(
        tStudentawardExample, Integer.valueOf("1000").intValue(), 
        Integer.valueOf("1").intValue());
      this.stuawardList = ((List)pager.getRows());
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    return "stut_stuaward";
  }
  
  public String doQuerylearnact()
  {
    try
    {
      TLearnactExample tLearnactExample = new TLearnactExample();
      Pager pager = this.localServiceEXProxy.querylearnact(
        tLearnactExample, Integer.valueOf("1000").intValue(), 
        Integer.valueOf("1").intValue());
      this.learnactList = ((List)pager.getRows());
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    return "stut_learnact";
  }
  
  public String doQuerybookclub()
  {
    try
    {
      TBookclubExample tBookclubExample = new TBookclubExample();
      Pager pager = this.localServiceEXProxy.querybookclub(
        tBookclubExample, Integer.valueOf("1000").intValue(), 
        Integer.valueOf("1").intValue());
      this.bookClubList = ((List)pager.getRows());
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    return "stut_bookclub";
  }
  
  public String doQuerysocialevent()
  {
    try
    {
      TSocialeventExample tSocialeventExample = new TSocialeventExample();
      Pager pager = this.localServiceEXProxy.querysocialevent(
        tSocialeventExample, Integer.valueOf("1000").intValue(), 
        Integer.valueOf("1").intValue());
      this.socilList = ((List)pager.getRows());
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    return "stut_socialevent";
  }
}
