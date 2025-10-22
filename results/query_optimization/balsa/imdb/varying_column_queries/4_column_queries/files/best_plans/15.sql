/*+ HashJoin(cast_info movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and title.imdb_index>0 and title.phonetic_code>0 and title.production_year<126;

