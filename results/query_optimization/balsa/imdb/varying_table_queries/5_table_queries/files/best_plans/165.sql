/*+ HashJoin(movie_info_idx title movie_info movie_keyword movie_companies)
 HashJoin(movie_info_idx title movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 Leading(((((movie_info_idx title) movie_info) movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>807 and movie_info.info_type_id<16 and title.series_years>0;

