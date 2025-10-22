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
select count(*) from movie_companies,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.production_year>15 and title.phonetic_code>0;

