/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 HashJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.kind_id>2 and title.season_nr=0 and title.phonetic_code>2815 and title.production_year>124;

