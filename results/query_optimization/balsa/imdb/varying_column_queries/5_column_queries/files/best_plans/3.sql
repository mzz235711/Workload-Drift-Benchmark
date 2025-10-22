/*+ HashJoin(movie_keyword title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_info_idx) movie_companies) cast_info))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<6000 and movie_keyword.keyword_id<33790 and movie_info_idx.info_type_id>99 and title.season_nr<3 and title.kind_id=7;

