/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>228 and cast_info.role_id=3 and title.season_nr>0 and title.phonetic_code<23080 and title.episode_nr<4192;

