/*+ HashJoin(movie_companies movie_info_idx title cast_info)
 NestLoop(movie_info_idx title cast_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_companies ((movie_info_idx title) cast_info))) */
select count(*) from movie_info_idx,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=101 and cast_info.nr_order<7 and title.series_years>0 and title.phonetic_code>11256 and title.production_year<121;

