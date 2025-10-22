/*+ HashJoin(cast_info title movie_companies movie_info movie_keyword)
 HashJoin(cast_info title movie_companies movie_info)
 NestLoop(cast_info title movie_companies)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((cast_info title) movie_companies) movie_info) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.production_year>106 and title.kind_id<7 and title.imdb_index>0 and title.episode_nr<12;

