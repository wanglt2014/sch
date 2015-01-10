package com.et59.cus.action;

import java.io.IOException;

import com.alibaba.fastjson.JSON;
import com.et59.cus.domain.entity.BsMenu;

/**
 * @company 点滴工作室
 * @author liuhaihua
 *
 */
public class MenuAction extends BaseAction {

	/**
	 * 序列化
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 查询菜单json
	 */
	public  void  query(){
		String jsonstr = "";
		try {
			jsonstr = localServiceProxy.getMenuJsonstr();
			super.reponseWriter(jsonstr);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 菜单显示
	 * @return
	 */
	public  String show(){
		return "menu_show";
	}
	/**
	 * 更新或者删除菜单
	 */
	public  void updateoradd(){
		boolean flag = false;
		try {
			String id = request.getParameter("id");
			String menuname = request.getParameter("menuname");
			String menuorder = request.getParameter("menuorder");
			String menuurl = request.getParameter("menuurl");
			String menulevel = request.getParameter("menulevel");
			String menuparent = request.getParameter("menuparent");
			BsMenu  bsMenu = new BsMenu();
			if(null!=id&&!id.equals("NaN")&&!id.trim().equals("")){
				bsMenu.setId(Long.valueOf(id));
			}else{
				bsMenu.setId(null);
			}
			if(null!=menulevel&&!menulevel.equals("NaN")&&!menulevel.trim().equals("")){
				bsMenu.setMenulevel(Integer.valueOf(menulevel));
			}else{
				bsMenu.setMenulevel(null);
			}
			if(null!=menuurl&&!menuurl.equals("NaN")&&!menuurl.trim().equals("")){
				bsMenu.setMenuurl(menuurl);
			}else{
				bsMenu.setMenuurl(null);
			}
			if(null!=menuorder&&!menuorder.equals("NaN")&&!menuorder.trim().equals("")){
				bsMenu.setMenuorder(Integer.valueOf(menuorder));
			}else{
				bsMenu.setMenuorder(null);
			}
			if(null!=menuparent&&!menuparent.equals("NaN")&&!menuparent.trim().equals("")){
				bsMenu.setMenuparent(Integer.valueOf(menuparent));
			}else{
				bsMenu.setMenuparent(null);
			}
			if(null!=menuname&&!menuname.equals("NaN")&&!menuname.trim().equals("")){
				bsMenu.setText(menuname);
			}else{
				bsMenu.setText(null);
			}
			localServiceProxy.updateOrAddMenu(bsMenu);
			flag=true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 删除菜单
	 */
	public  void  deleteMenu(){
		boolean flag = false;
		try {
			String id = request.getParameter("id");
			localServiceProxy.deleteMenu(Long.valueOf(id));
			flag=true;
			super.reponseWriter(JSON.toJSONString(flag));
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
