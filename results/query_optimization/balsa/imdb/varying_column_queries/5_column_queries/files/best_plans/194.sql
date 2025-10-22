/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 MergeJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and movie_companies.company_type_id=1 and movie_info.info_type_id>1 and title.phonetic_code>9860 and title.imdb_index>0;

