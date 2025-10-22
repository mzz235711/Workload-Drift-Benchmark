/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 MergeJoin(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=100 and movie_companies.company_type_id=2 and movie_info.info_type_id<8 and title.season_nr=0 and title.phonetic_code>8899 and title.kind_id=1 and title.imdb_index>0;

