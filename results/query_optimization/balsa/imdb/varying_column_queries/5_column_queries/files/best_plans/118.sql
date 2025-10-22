/*+ HashJoin(movie_companies movie_info title movie_info_idx movie_keyword)
 NestLoop(movie_info title movie_info_idx movie_keyword)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_companies ((movie_info (title movie_info_idx)) movie_keyword))) */
select count(*) from movie_info,movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_info_idx.info_type_id<101 and title.series_years>0 and title.kind_id<3 and title.phonetic_code>2693;

