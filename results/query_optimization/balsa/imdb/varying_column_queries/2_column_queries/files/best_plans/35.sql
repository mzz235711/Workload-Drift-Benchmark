/*+ HashJoin(movie_companies movie_keyword title movie_info_idx cast_info)
 HashJoin(movie_companies movie_keyword title movie_info_idx)
 NestLoop(movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 Leading(((movie_companies ((movie_keyword title) movie_info_idx)) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.season_nr=0;

