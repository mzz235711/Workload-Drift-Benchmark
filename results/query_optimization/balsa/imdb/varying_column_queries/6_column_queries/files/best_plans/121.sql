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
select count(*) from movie_keyword,cast_info,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<98 and movie_companies.company_type_id<2 and title.phonetic_code<217 and title.imdb_index>0 and title.production_year<110 and title.episode_nr<7;

