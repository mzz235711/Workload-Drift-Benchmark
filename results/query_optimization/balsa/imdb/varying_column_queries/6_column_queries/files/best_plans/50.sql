/*+ NestLoop(title movie_companies movie_keyword cast_info movie_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<105 and movie_keyword.keyword_id>117 and title.kind_id=7 and title.episode_nr>0 and title.imdb_index=0 and title.series_years>0;

