/*+ HashJoin(movie_info movie_info_idx movie_keyword title cast_info)
 MergeJoin(movie_info_idx movie_keyword title cast_info)
 MergeJoin(movie_keyword title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (movie_keyword (title cast_info))))) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<20318 and title.season_nr>0 and title.phonetic_code<8094;

