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
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>0 and movie_info.info_type_id>1 and title.production_year>124 and title.episode_nr>151 and title.imdb_index=0;

