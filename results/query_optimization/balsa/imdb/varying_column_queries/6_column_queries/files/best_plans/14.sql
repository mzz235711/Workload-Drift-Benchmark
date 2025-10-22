/*+ NestLoop(title movie_keyword movie_companies cast_info movie_info)
 NestLoop(title movie_keyword movie_companies cast_info)
 HashJoin(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_keyword) movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>585 and cast_info.role_id>1 and title.series_years>0 and title.phonetic_code<11797 and title.imdb_index>0 and title.episode_nr<10;

