/*+ NestLoop(movie_info_idx movie_keyword title)
 NestLoop(movie_info_idx movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 Leading(((movie_info_idx movie_keyword) title)) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.episode_nr<5839 AND title.phonetic_code<20075 AND title.production_year>44 AND movie_keyword.keyword_id<4453720 AND movie_info_idx.info_type_id>106 AND title.imdb_index=0;

