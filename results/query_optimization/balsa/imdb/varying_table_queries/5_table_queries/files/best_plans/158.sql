/*+ HashJoin(movie_info_idx cast_info title movie_companies movie_info)
 HashJoin(movie_info_idx cast_info title movie_companies)
 MergeJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((movie_info_idx (cast_info (title movie_companies))) movie_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>8 and movie_info_idx.info_type_id=100 and title.phonetic_code<16820 and title.kind_id<3;

