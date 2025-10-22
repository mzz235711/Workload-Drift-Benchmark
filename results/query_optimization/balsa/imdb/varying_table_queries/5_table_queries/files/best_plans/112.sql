/*+ HashJoin(title cast_info movie_companies movie_info movie_keyword)
 HashJoin(title cast_info movie_companies movie_info)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_companies) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<45 and movie_companies.company_type_id>1 and movie_info.info_type_id>1 and title.episode_nr>0 and title.season_nr>0;

