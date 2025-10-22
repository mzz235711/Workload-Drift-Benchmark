/*+ NestLoop(movie_info_idx title movie_companies cast_info)
 MergeJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_companies)) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<79 and title.episode_nr<27 and title.imdb_index>0 and title.production_year>115 and title.phonetic_code>13316;

