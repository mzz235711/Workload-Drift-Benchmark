/*+ NestLoop(movie_info_idx title movie_companies movie_info cast_info)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_info_idx title) movie_companies) movie_info) cast_info)) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id<10 and movie_info_idx.info_type_id=99 and title.phonetic_code<10429 and title.season_nr=0 and title.imdb_index>0 and title.series_years>0;

