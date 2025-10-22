/*+ HashJoin(movie_companies title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_companies ((title movie_info_idx) cast_info))) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and movie_info_idx.info_type_id<101 and title.episode_nr>0 and title.kind_id>1 and title.phonetic_code<19022;

