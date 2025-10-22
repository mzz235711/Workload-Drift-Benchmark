/*+ HashJoin(title cast_info movie_companies movie_keyword movie_info)
 HashJoin(title cast_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title cast_info) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=9 and title.phonetic_code>0 and title.episode_nr<5 and title.season_nr>0;

