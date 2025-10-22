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
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<63 and title.kind_id=3;

