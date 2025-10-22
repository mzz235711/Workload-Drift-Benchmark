/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>19 AND title.production_year<84 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>11 AND movie_info.info_type_id<19;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>26 AND title.production_year<32 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>20 AND movie_info.info_type_id<56;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>30 AND title.production_year<75 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>11 AND movie_info.info_type_id<30;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<28 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>14 AND movie_info.info_type_id<41;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>25 AND title.production_year<36 AND cast_info.role_id>2 AND cast_info.role_id<6 AND movie_info.info_type_id>26 AND movie_info.info_type_id<50;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>5 AND title.production_year<31 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>9 AND movie_info.info_type_id<32;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>66 AND title.production_year<70 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>15 AND movie_info.info_type_id<82;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>17 AND title.production_year<29 AND cast_info.role_id>2 AND cast_info.role_id<6 AND movie_info.info_type_id>32 AND movie_info.info_type_id<57;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>35 AND title.production_year<41 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>33 AND movie_info.info_type_id<40;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>22 AND title.production_year<90 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>30 AND movie_info.info_type_id<55;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>21 AND title.production_year<76 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>30 AND movie_info.info_type_id<45;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>19 AND title.production_year<80 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>30 AND movie_info.info_type_id<50;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>8 AND title.production_year<23 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>11 AND movie_info.info_type_id<32;

/*+ HashJoin(title cast_info movie_info_idx movie_info)
 HashJoin(title cast_info movie_info_idx)
 HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_info_idx) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>23 AND title.production_year<78 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>34 AND movie_info.info_type_id<58;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>10 AND title.production_year<30 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>11 AND movie_info.info_type_id<22;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<34 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>14 AND movie_info.info_type_id<28;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>42 AND title.production_year<83 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>14 AND movie_info.info_type_id<23;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>7 AND title.production_year<41 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>35 AND movie_info.info_type_id<63;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>18 AND title.production_year<69 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>12 AND movie_info.info_type_id<36;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>19 AND title.production_year<78 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>42 AND movie_info.info_type_id<54;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>62 AND title.production_year<76 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>12 AND movie_info.info_type_id<64;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>8 AND title.production_year<52 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>19 AND movie_info.info_type_id<43;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>38 AND title.production_year<55 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>9 AND movie_info.info_type_id<34;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>11 AND title.production_year<30 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>12 AND movie_info.info_type_id<62;

/*+ HashJoin(title cast_info movie_info_idx movie_info)
 HashJoin(title cast_info movie_info_idx)
 HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_info_idx) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>25 AND title.production_year<64 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>7 AND movie_info.info_type_id<9;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>10 AND title.production_year<34 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>42 AND movie_info.info_type_id<45;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>18 AND title.production_year<73 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>15 AND movie_info.info_type_id<19;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>29 AND title.production_year<36 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>19 AND movie_info.info_type_id<55;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>22 AND title.production_year<33 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>4 AND movie_info.info_type_id<78;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>61 AND title.production_year<72 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>8 AND movie_info.info_type_id<27;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>51 AND title.production_year<62 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>2 AND movie_info.info_type_id<16;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>41 AND title.production_year<75 AND cast_info.role_id>3 AND cast_info.role_id<7 AND movie_info.info_type_id>17 AND movie_info.info_type_id<65;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>8 AND title.production_year<50 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>3 AND movie_info.info_type_id<19;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<38 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>17 AND movie_info.info_type_id<35;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>17 AND title.production_year<52 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>18 AND movie_info.info_type_id<45;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>17 AND title.production_year<33 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>23 AND movie_info.info_type_id<85;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>12 AND title.production_year<71 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>40 AND movie_info.info_type_id<42;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>14 AND title.production_year<21 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>10 AND movie_info.info_type_id<52;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>20 AND title.production_year<50 AND cast_info.role_id>2 AND cast_info.role_id<6 AND movie_info.info_type_id>9 AND movie_info.info_type_id<33;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<20 AND cast_info.role_id>2 AND cast_info.role_id<6 AND movie_info.info_type_id>36 AND movie_info.info_type_id<75;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>13 AND title.production_year<49 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>13 AND movie_info.info_type_id<18;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>4 AND title.production_year<9 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>17 AND movie_info.info_type_id<33;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>64 AND title.production_year<78 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>7 AND movie_info.info_type_id<37;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>21 AND title.production_year<58 AND cast_info.role_id>2 AND cast_info.role_id<6 AND movie_info.info_type_id>53 AND movie_info.info_type_id<60;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>44 AND title.production_year<75 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>36 AND movie_info.info_type_id<60;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>17 AND title.production_year<55 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>14 AND movie_info.info_type_id<30;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>5 AND title.production_year<12 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>7 AND movie_info.info_type_id<46;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>38 AND title.production_year<43 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>3 AND movie_info.info_type_id<21;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>3 AND title.production_year<12 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>14 AND movie_info.info_type_id<30;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>22 AND title.production_year<35 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>10 AND movie_info.info_type_id<31;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>21 AND title.production_year<55 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>11 AND movie_info.info_type_id<50;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>18 AND title.production_year<28 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>7 AND movie_info.info_type_id<50;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>36 AND title.production_year<90 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>9 AND movie_info.info_type_id<14;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>30 AND title.production_year<64 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>12 AND movie_info.info_type_id<25;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>12 AND title.production_year<66 AND cast_info.role_id>3 AND cast_info.role_id<7 AND movie_info.info_type_id>23 AND movie_info.info_type_id<40;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>6 AND title.production_year<29 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>38 AND movie_info.info_type_id<73;

/*+ MergeJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>25 AND title.production_year<58 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>29 AND movie_info.info_type_id<60;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>15 AND title.production_year<43 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>28 AND movie_info.info_type_id<54;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>20 AND title.production_year<26 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>15 AND movie_info.info_type_id<36;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>13 AND title.production_year<27 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>37 AND movie_info.info_type_id<49;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>23 AND title.production_year<60 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>23 AND movie_info.info_type_id<52;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>15 AND title.production_year<42 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>49 AND movie_info.info_type_id<74;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>3 AND title.production_year<40 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>31 AND movie_info.info_type_id<78;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>6 AND title.production_year<26 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>15 AND movie_info.info_type_id<20;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>24 AND title.production_year<32 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>34 AND movie_info.info_type_id<74;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>42 AND title.production_year<44 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>19 AND movie_info.info_type_id<44;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>24 AND title.production_year<62 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>9 AND movie_info.info_type_id<25;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>52 AND title.production_year<61 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>35 AND movie_info.info_type_id<47;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>39 AND title.production_year<42 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>33 AND movie_info.info_type_id<46;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>8 AND title.production_year<33 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>5 AND movie_info.info_type_id<18;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<37 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>39 AND movie_info.info_type_id<55;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>34 AND title.production_year<54 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>15 AND movie_info.info_type_id<22;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>28 AND title.production_year<47 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>32 AND movie_info.info_type_id<37;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>10 AND title.production_year<84 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>21 AND movie_info.info_type_id<39;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>20 AND title.production_year<53 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>27 AND movie_info.info_type_id<44;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>27 AND title.production_year<39 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>28 AND movie_info.info_type_id<48;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>39 AND title.production_year<46 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>8 AND movie_info.info_type_id<28;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>4 AND title.production_year<50 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>45 AND movie_info.info_type_id<57;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>5 AND title.production_year<43 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>30 AND movie_info.info_type_id<37;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>14 AND title.production_year<85 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>16 AND movie_info.info_type_id<42;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<50 AND cast_info.role_id>3 AND cast_info.role_id<8 AND movie_info.info_type_id>17 AND movie_info.info_type_id<33;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>23 AND title.production_year<32 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>34 AND movie_info.info_type_id<46;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<36 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>9 AND movie_info.info_type_id<29;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>25 AND title.production_year<42 AND cast_info.role_id>2 AND cast_info.role_id<6 AND movie_info.info_type_id>30 AND movie_info.info_type_id<38;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>24 AND title.production_year<53 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>13 AND movie_info.info_type_id<27;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>5 AND title.production_year<37 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>13 AND movie_info.info_type_id<57;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 MergeJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>27 AND title.production_year<74 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>29 AND movie_info.info_type_id<46;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>20 AND title.production_year<24 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>17 AND movie_info.info_type_id<36;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>24 AND title.production_year<72 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>14 AND movie_info.info_type_id<45;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>28 AND title.production_year<58 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>28 AND movie_info.info_type_id<48;

/*+ MergeJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>20 AND title.production_year<24 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>17 AND movie_info.info_type_id<24;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>22 AND title.production_year<51 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>9 AND movie_info.info_type_id<23;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>18 AND title.production_year<26 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>12 AND movie_info.info_type_id<20;

/*+ MergeJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>3 AND title.production_year<45 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>36 AND movie_info.info_type_id<67;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>28 AND title.production_year<66 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>16 AND movie_info.info_type_id<51;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>12 AND title.production_year<83 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>21 AND movie_info.info_type_id<59;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>15 AND title.production_year<33 AND cast_info.role_id>2 AND cast_info.role_id<6 AND movie_info.info_type_id>12 AND movie_info.info_type_id<21;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>57 AND title.production_year<77 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>18 AND movie_info.info_type_id<55;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>21 AND title.production_year<64 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>42 AND movie_info.info_type_id<44;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>38 AND title.production_year<41 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>9 AND movie_info.info_type_id<37;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>11 AND title.production_year<66 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>7 AND movie_info.info_type_id<61;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>25 AND title.production_year<48 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>4 AND movie_info.info_type_id<27;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<36 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>10 AND movie_info.info_type_id<13;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<21 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>38 AND movie_info.info_type_id<59;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>13 AND title.production_year<23 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>32 AND movie_info.info_type_id<82;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>19 AND title.production_year<46 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>13 AND movie_info.info_type_id<28;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>7 AND title.production_year<13 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>12 AND movie_info.info_type_id<40;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>29 AND title.production_year<32 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>8 AND movie_info.info_type_id<29;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>32 AND title.production_year<40 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>14 AND movie_info.info_type_id<17;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>30 AND title.production_year<61 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>36 AND movie_info.info_type_id<57;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>28 AND title.production_year<40 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>29 AND movie_info.info_type_id<49;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>44 AND title.production_year<65 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>38 AND movie_info.info_type_id<50;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>5 AND title.production_year<68 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>15 AND movie_info.info_type_id<28;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>50 AND title.production_year<67 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>15 AND movie_info.info_type_id<26;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>34 AND title.production_year<58 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>25 AND movie_info.info_type_id<39;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>49 AND title.production_year<68 AND cast_info.role_id>2 AND cast_info.role_id<6 AND movie_info.info_type_id>9 AND movie_info.info_type_id<23;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>3 AND title.production_year<22 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>34 AND movie_info.info_type_id<49;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<30 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>11 AND movie_info.info_type_id<13;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<33 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>29 AND movie_info.info_type_id<52;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>77 AND title.production_year<91 AND cast_info.role_id>2 AND cast_info.role_id<7 AND movie_info.info_type_id>27 AND movie_info.info_type_id<43;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>5 AND title.production_year<22 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>2 AND movie_info.info_type_id<9;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>37 AND title.production_year<101 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>14 AND movie_info.info_type_id<80;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>44 AND title.production_year<56 AND cast_info.role_id>1 AND cast_info.role_id<6 AND movie_info.info_type_id>9 AND movie_info.info_type_id<34;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<34 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>70 AND movie_info.info_type_id<78;

/*+ HashJoin(movie_info_idx movie_info cast_info title)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info_idx (movie_info (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<87 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>11 AND movie_info.info_type_id<29;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>21 AND title.production_year<49 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>37 AND movie_info.info_type_id<49;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>11 AND title.production_year<39 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>12 AND movie_info.info_type_id<17;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>22 AND title.production_year<45 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>31 AND movie_info.info_type_id<52;

/*+ MergeJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>28 AND title.production_year<61 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>25 AND movie_info.info_type_id<78;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>15 AND title.production_year<24 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>12 AND movie_info.info_type_id<17;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<66 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>47 AND movie_info.info_type_id<73;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>17 AND title.production_year<42 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>23 AND movie_info.info_type_id<40;

/*+ MergeJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>47 AND title.production_year<77 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>48 AND movie_info.info_type_id<56;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>36 AND title.production_year<42 AND cast_info.role_id>1 AND cast_info.role_id<8 AND movie_info.info_type_id>42 AND movie_info.info_type_id<55;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>9 AND title.production_year<29 AND cast_info.role_id>3 AND cast_info.role_id<7 AND movie_info.info_type_id>4 AND movie_info.info_type_id<22;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>12 AND title.production_year<24 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>7 AND movie_info.info_type_id<42;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>7 AND title.production_year<19 AND cast_info.role_id>3 AND cast_info.role_id<9 AND movie_info.info_type_id>14 AND movie_info.info_type_id<33;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>9 AND title.production_year<57 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>8 AND movie_info.info_type_id<31;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>29 AND title.production_year<74 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>10 AND movie_info.info_type_id<47;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info ((cast_info title) movie_info_idx))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>14 AND title.production_year<46 AND cast_info.role_id>1 AND cast_info.role_id<7 AND movie_info.info_type_id>51 AND movie_info.info_type_id<61;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>25 AND title.production_year<37 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>5 AND movie_info.info_type_id<10;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>55 AND title.production_year<60 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>2 AND movie_info.info_type_id<22;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>34 AND title.production_year<48 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>17 AND movie_info.info_type_id<41;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>45 AND title.production_year<86 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>32 AND movie_info.info_type_id<66;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<59 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>14 AND movie_info.info_type_id<31;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>28 AND title.production_year<42 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>21 AND movie_info.info_type_id<57;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>37 AND title.production_year<56 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>15 AND movie_info.info_type_id<32;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>32 AND title.production_year<67 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>31 AND movie_info.info_type_id<63;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>24 AND title.production_year<57 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>21 AND movie_info.info_type_id<76;

/*+ MergeJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>16 AND title.production_year<42 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>17 AND movie_info.info_type_id<35;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>37 AND title.production_year<56 AND cast_info.role_id>1 AND cast_info.role_id<6 AND movie_info.info_type_id>8 AND movie_info.info_type_id<57;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>14 AND title.production_year<24 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>9 AND movie_info.info_type_id<27;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>19 AND title.production_year<28 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>10 AND movie_info.info_type_id<35;

/*+ HashJoin(title cast_info movie_info_idx movie_info)
 HashJoin(title cast_info movie_info_idx)
 HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_info_idx) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>15 AND title.production_year<80 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>18 AND movie_info.info_type_id<64;

/*+ MergeJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>17 AND title.production_year<63 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>40 AND movie_info.info_type_id<48;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>42 AND title.production_year<65 AND cast_info.role_id>1 AND cast_info.role_id<6 AND movie_info.info_type_id>3 AND movie_info.info_type_id<44;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>14 AND title.production_year<68 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>34 AND movie_info.info_type_id<83;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>15 AND title.production_year<20 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>18 AND movie_info.info_type_id<72;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>20 AND title.production_year<37 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>57 AND movie_info.info_type_id<69;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>25 AND title.production_year<48 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>21 AND movie_info.info_type_id<49;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<47 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>16 AND movie_info.info_type_id<66;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>34 AND title.production_year<36 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>20 AND movie_info.info_type_id<68;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<58 AND cast_info.role_id>2 AND cast_info.role_id<7 AND movie_info.info_type_id>15 AND movie_info.info_type_id<27;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>13 AND title.production_year<25 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>8 AND movie_info.info_type_id<16;

/*+ HashJoin(movie_info_idx movie_info cast_info title)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info_idx (movie_info (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>34 AND title.production_year<65 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>10 AND movie_info.info_type_id<54;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<34 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>23 AND movie_info.info_type_id<50;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>18 AND title.production_year<41 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>15 AND movie_info.info_type_id<40;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>19 AND title.production_year<42 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>52 AND movie_info.info_type_id<63;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>32 AND title.production_year<49 AND cast_info.role_id>4 AND cast_info.role_id<9 AND movie_info.info_type_id>57 AND movie_info.info_type_id<69;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>19 AND title.production_year<49 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>14 AND movie_info.info_type_id<34;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>30 AND title.production_year<39 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>31 AND movie_info.info_type_id<74;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>11 AND title.production_year<48 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>17 AND movie_info.info_type_id<20;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>22 AND title.production_year<32 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>15 AND movie_info.info_type_id<25;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>10 AND title.production_year<57 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>15 AND movie_info.info_type_id<19;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>66 AND title.production_year<89 AND cast_info.role_id>1 AND cast_info.role_id<5 AND movie_info.info_type_id>6 AND movie_info.info_type_id<43;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>39 AND title.production_year<47 AND cast_info.role_id>2 AND cast_info.role_id<7 AND movie_info.info_type_id>14 AND movie_info.info_type_id<30;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>78 AND title.production_year<82 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>6 AND movie_info.info_type_id<23;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>18 AND title.production_year<66 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>11 AND movie_info.info_type_id<79;

/*+ HashJoin(movie_info_idx movie_info cast_info title)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info_idx (movie_info (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>24 AND title.production_year<39 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>14 AND movie_info.info_type_id<45;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<48 AND cast_info.role_id>3 AND cast_info.role_id<7 AND movie_info.info_type_id>37 AND movie_info.info_type_id<53;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>49 AND title.production_year<70 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>9 AND movie_info.info_type_id<34;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>26 AND title.production_year<74 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>8 AND movie_info.info_type_id<37;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>10 AND title.production_year<42 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>6 AND movie_info.info_type_id<27;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>41 AND title.production_year<62 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>23 AND movie_info.info_type_id<51;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading(((movie_info_idx (cast_info title)) movie_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<96 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>21 AND movie_info.info_type_id<82;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>28 AND title.production_year<33 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>14 AND movie_info.info_type_id<38;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>2 AND title.production_year<17 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>10 AND movie_info.info_type_id<38;

/*+ MergeJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>13 AND title.production_year<52 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>42 AND movie_info.info_type_id<55;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>20 AND title.production_year<45 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>17 AND movie_info.info_type_id<72;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>31 AND title.production_year<42 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>8 AND movie_info.info_type_id<21;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>28 AND title.production_year<32 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>5 AND movie_info.info_type_id<38;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>29 AND title.production_year<45 AND cast_info.role_id>1 AND cast_info.role_id<6 AND movie_info.info_type_id>7 AND movie_info.info_type_id<29;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>17 AND title.production_year<44 AND cast_info.role_id>1 AND cast_info.role_id<3 AND movie_info.info_type_id>44 AND movie_info.info_type_id<49;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>5 AND title.production_year<55 AND cast_info.role_id>1 AND cast_info.role_id<6 AND movie_info.info_type_id>13 AND movie_info.info_type_id<56;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>26 AND title.production_year<31 AND cast_info.role_id>3 AND cast_info.role_id<7 AND movie_info.info_type_id>16 AND movie_info.info_type_id<30;

/*+ NestLoop(movie_info_idx title movie_info cast_info)
 MergeJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading(((movie_info_idx (title movie_info)) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>30 AND title.production_year<34 AND cast_info.role_id>2 AND cast_info.role_id<4 AND movie_info.info_type_id>19 AND movie_info.info_type_id<45;

/*+ HashJoin(movie_info movie_info_idx cast_info title)
 HashJoin(movie_info_idx cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (cast_info title)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>41 AND title.production_year<61 AND cast_info.role_id>1 AND cast_info.role_id<4 AND movie_info.info_type_id>41 AND movie_info.info_type_id<60;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>34 AND title.production_year<42 AND cast_info.role_id>2 AND cast_info.role_id<5 AND movie_info.info_type_id>3 AND movie_info.info_type_id<34;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>13 AND title.production_year<35 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>5 AND movie_info.info_type_id<10;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 HashJoin(movie_info cast_info title)
 HashJoin(cast_info title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_info (cast_info title)) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>80 AND title.production_year<97 AND cast_info.role_id>2 AND cast_info.role_id<7 AND movie_info.info_type_id>35 AND movie_info.info_type_id<46;

