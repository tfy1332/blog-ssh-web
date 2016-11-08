package com.ssh.model;

import java.util.List;

public class Pager {
	private static final int DEFAULT_PAGE_SIZE = 20;   
	  
	  
	    private int start=0;  // 当前页第一条数据在List中的位置,从0开始   
	  
	    private int page=1;  //当前页   
	  
	    private int totalPage=0;  //总计有多少页   
	  
	private Integer total=0;// 总记录数 
	private Integer pageSize = 6; // 每页的记录数   
	private Integer pageIndex=1;
	
	private List<?> list;

	public int getStart() {
		return start;
	}

//  此位置根据计算得到  
	public void setStart(int start) {
		this.start = start;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		 if(page>0) {   
	            start=(page-1)*pageSize;   
	            this.page = page;   
	        }   
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
		 totalPage = (int) Math.ceil((total + pageSize - 1) / pageSize);   
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total=total;   
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}
	 //获取上一页页数   
    public int getLastPage() {   
        if(hasLastPage()) {   
            return page-1;   
        }   
        return page;   
    }   
    public int getNextPage() {   
        if(hasNextPage()) {   
            return page+1;   
        }   
        return page;   
    }   
    /**  
     * 该页是否有下一页.  
     */  
    public boolean hasNextPage() {   
        return page < totalPage;   
    }   
  
    /**  
     * 该页是否有上一页.  
     */  
    public boolean hasLastPage() {   
        return page > 1;   
    }   
}
