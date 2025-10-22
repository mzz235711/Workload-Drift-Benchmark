/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>2592 and title.season_nr=0 and title.kind_id>4;

