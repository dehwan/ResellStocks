
/*
- 메인페이지 스탁리스트 쿼리
오피셜명, 이미지, 오피셜ID, 최고/최저가
*/
select
roc.oc_id, roc.oc_name, roc.oc_pic, min(rsl.sl_price) as min_price, max(rsl.sl_price) as max_price
from
RS_OFFICIAL_CATEGORY roc, RS_STOCK_LIST rsl
where
roc.oc_id = rsl.oc_id
group by oc_id
;

/*
- 메인페이지: 검색
oc_tag 검색
*/
select
roc.oc_id, roc.oc_name, roc.oc_pic, min(rsl.sl_price) as min_price, max(rsl.sl_price) as max_price
from
RS_OFFICIAL_CATEGORY roc, RS_STOCK_LIST rsl
where
roc.oc_id = rsl.oc_id and
roc.oc_tag like '%text%'
group by oc_id
;
/*
- 상세페이지: 각 상품에 대한 그래프 쿼리
최고가격, 날짜, 갯수
*/
select 
sl_reg_date, max_price, cnt_stocks
from 
SUM_PRICE_PERDAY
where 
oc_id = 1 and sl_reg_date between '2016-05-11' and '2016-06-11'
;

/*
- 상세페이지: 상품에 대한 기본 정보 쿼리
제품명, 최고/최저가, 사이즈, 한달간 제품 갯수
*/
select
roc.oc_id, roc.oc_name, min(rsl.sl_price) as min_price, max(rsl.sl_price) as max_price
from
RS_OFFICIAL_CATEGORY roc, RS_STOCK_LIST rsl
where
roc.oc_id = rsl.oc_id and roc.oc_id = 1
;
/*
- 상세페이지: 매물 리스팅 쿼리
사이즈, 가격, url
*/
select
sl_size, sl_price, sl_url, sl_reg_date
from
RS_STOCK_LIST
where
oc_id = 1
order by sl_reg_date desc
;
/*
- 상세페이지: 선택된 사이즈의 매물 리스팅 쿼리
오피셜명, 사이즈, 가격, url, 선택된 사이즈
*/
select
sl_size, sl_price, sl_url, sl_reg_date
from
RS_STOCK_LIST
where
oc_id = 1 and sl_size = 260
order by sl_reg_date desc
;
