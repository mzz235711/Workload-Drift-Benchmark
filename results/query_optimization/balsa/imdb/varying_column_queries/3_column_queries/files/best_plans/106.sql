/*+ NestLoop(title movie_companies movie_info_idx cast_info movie_keyword)
 NestLoop(title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_keyword)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>2488 and cast_info.nr_order>2 and title.series_years>0;

