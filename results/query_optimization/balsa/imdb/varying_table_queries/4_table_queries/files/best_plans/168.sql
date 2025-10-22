/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>1 and title.phonetic_code<7746;

