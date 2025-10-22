/*+ MergeJoin(title movie_info_idx movie_companies movie_info cast_info)
 NestLoop(title movie_info_idx movie_companies movie_info)
 MergeJoin(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_companies) movie_info) cast_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<106 and movie_info_idx.info_type_id=100 and cast_info.nr_order>0 and title.phonetic_code>11419 and title.kind_id>1 and title.imdb_index=0 and title.season_nr>0;

