/*+ HashJoin(movie_companies title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_companies ((title movie_info_idx) cast_info))) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and cast_info.role_id=1 and title.episode_nr>0 and title.season_nr>0 and title.imdb_index=0;

