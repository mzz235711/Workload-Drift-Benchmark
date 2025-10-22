/*+ NestLoop(movie_companies title movie_info_idx cast_info movie_info)
 NestLoop(movie_companies title movie_info_idx cast_info)
 NestLoop(movie_companies title movie_info_idx)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_companies title) movie_info_idx) cast_info) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_companies.company_type_id=2 and title.episode_nr>0;

