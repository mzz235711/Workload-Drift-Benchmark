/*+ NestLoop(title movie_info movie_info_idx movie_keyword)
 NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((((title movie_info) movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<24222 and title.series_years>0 and title.production_year<109;

