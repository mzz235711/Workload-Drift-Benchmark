/*+ HashJoin(movie_info title movie_info_idx movie_keyword movie_companies)
 NestLoop(title movie_info_idx movie_keyword movie_companies)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((movie_info (((title movie_info_idx) movie_keyword) movie_companies))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.kind_id=7 and title.imdb_index=0 and title.episode_nr<86;

