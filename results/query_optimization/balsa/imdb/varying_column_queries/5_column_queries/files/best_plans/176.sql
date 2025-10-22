/*+ HashJoin(movie_companies title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_companies ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.phonetic_code<12985 and title.episode_nr<5449 and title.kind_id=7;

