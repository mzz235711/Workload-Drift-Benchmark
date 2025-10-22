/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_info_idx.info_type_id>99 and title.phonetic_code<16973 and title.production_year>120 and title.kind_id=1 and title.imdb_index=0;

