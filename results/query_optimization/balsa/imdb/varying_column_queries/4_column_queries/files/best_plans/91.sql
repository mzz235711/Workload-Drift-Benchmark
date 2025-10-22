/*+ HashJoin(cast_info movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from cast_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info_idx.info_type_id<101 and title.phonetic_code<10276 and title.imdb_index>0;

