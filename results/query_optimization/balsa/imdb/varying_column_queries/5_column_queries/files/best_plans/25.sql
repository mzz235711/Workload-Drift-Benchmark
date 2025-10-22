/*+ HashJoin(movie_info title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_keyword) cast_info))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.season_nr>0 and title.episode_nr>0 and title.production_year>87 and title.phonetic_code<2989;

