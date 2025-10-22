/*+ HashJoin(cast_info title movie_keyword movie_info movie_companies)
 NestLoop(title movie_keyword movie_info movie_companies)
 HashJoin(title movie_keyword movie_info)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 Leading((cast_info (((title movie_keyword) movie_info) movie_companies))) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>1 and title.season_nr=1 and title.episode_nr<16;

