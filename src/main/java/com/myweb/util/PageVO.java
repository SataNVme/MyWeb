package com.myweb.util;

public class PageVO {

   //화면에 그려질 페이지네이션을 계산하는 변수 선언
   private int startPage; // 시작페이지 번호
   private int endPage;   // 끝페이지 번호
   private boolean prev, next; // 이전, 다음버튼
   
   private int pageNum; //현재 조회하는 페이지
   private int amount; //화면에 보여질데이터 개수
   private int total; //전체 게시글 수
   private int realEnd; //실제 끝 번호
   
   
   //생성자 - 생성될때, (페이지번호, 데이터개수, 총게시글 수) 를 받는다.
   public PageVO(int pageNum, int amount, int total) {
      this.pageNum = pageNum;
      this.amount = amount;
      this.total = total;
   
      
      //1. endPage 계산
      //현재조회하는 번호가 1~10 -> 10
      //현재조회하는 버호가 11~20 -> 20
      //공식: (int)Math.ceil(페이지 번호 / 화면에 보여질 데이터수) * 화면에 보여질 데이터 수 
      
      this.endPage = (int)Math.ceil( this.pageNum / (double)10) * 10;
      
      //2.StartPage 계산
      //공식: 끝페이지 번호 - 화면에 보여질 페이지네이션 개수 + 1;
      this.startPage = this.endPage - 10 + 1;
      
      //3. 실제끝번호 realEnd
      //만약 게시글이 52라면? -> 실제끝번호 6
      //만약 게시글이 163라면? -> 실제끝번호 17
      //공식: (int)Math.ceil( 전체게시글수 / amount 개수)
      this.realEnd = (int)Math.ceil( this.total / (double)this.amount);
      
      //4. endPage의 결정
      //예시 : 131개 게시글
      //1번페이지 클릭 -> endPage = 10, realEnd = 14 (10)
      //11번페이지 클릭 -> endPage = 20, realEnd = 1
      
      //5. prev버튼 활성화 여부(11, 21~~~부터 true)
      //startPage = 1, 11, 21, 31..........
      this.prev = this.startPage > 1;
      
      //6. next버튼활성화 여부
      //예시 : 131개 게시물
      //1~10번까지 endPage = 10, realEnd = 14 (true)
      //11~20번까지 endPage = 14, realEnd = 14 (false)
      this.next = this.realEnd > this.endPage;
   }
   
   
}