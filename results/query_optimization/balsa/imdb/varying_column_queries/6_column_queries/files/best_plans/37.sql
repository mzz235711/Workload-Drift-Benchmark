/*+ MergeJoin(movie_companies title movie_info_idx movie_info movie_keyword)
 MergeJoin(movie_companies title movie_info_idx movie_info)
 MergeJoin(movie_companies title movie_info_idx)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_companies title) movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>62 and movie_info_idx.info_type_id>99 and title.phonetic_code<20710 and title.kind_id=1 and title.season_nr=0 and title.imdb_index=0;

