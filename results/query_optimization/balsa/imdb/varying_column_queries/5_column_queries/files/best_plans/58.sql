/*+ NestLoop(movie_info title movie_keyword movie_companies cast_info)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info ((title movie_keyword) movie_companies)) cast_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>1002 and title.imdb_index=0 and title.phonetic_code<6497 and title.series_years>0 and title.episode_nr>0;

