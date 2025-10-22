/*+ HashJoin(movie_info title movie_companies movie_info_idx cast_info)
 NestLoop(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_info_idx) cast_info))) */
select count(*) from cast_info,movie_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<39 and movie_info.info_type_id>16 and title.kind_id=7 and title.series_years<1397 and title.episode_nr<814;

