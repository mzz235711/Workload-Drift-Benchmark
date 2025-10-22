/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and title.season_nr=2;

