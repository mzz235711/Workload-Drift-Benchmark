/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>68 AND title.production_year<111 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>62 AND movie_info.info_type_id<107;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>88 AND title.production_year<111 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>47 AND movie_info.info_type_id<57;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>61 AND title.production_year<113 AND cast_info.role_id>5 AND cast_info.role_id<10 AND movie_info.info_type_id>69 AND movie_info.info_type_id<81;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<120 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>63 AND movie_info.info_type_id<65;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>58 AND title.production_year<119 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>67 AND movie_info.info_type_id<96;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>101 AND title.production_year<109 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>87 AND movie_info.info_type_id<89;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>52 AND title.production_year<96 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>93 AND movie_info.info_type_id<100;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>51 AND title.production_year<106 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>70 AND movie_info.info_type_id<86;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>107 AND title.production_year<127 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>73 AND movie_info.info_type_id<83;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>94 AND title.production_year<107 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>91 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>88 AND title.production_year<111 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>40 AND movie_info.info_type_id<75;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>100 AND title.production_year<120 AND cast_info.role_id>3 AND cast_info.role_id<8 AND movie_info.info_type_id>68 AND movie_info.info_type_id<94;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>94 AND title.production_year<103 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>77 AND movie_info.info_type_id<91;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>55 AND title.production_year<117 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>37 AND movie_info.info_type_id<70;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>65 AND title.production_year<104 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>31 AND movie_info.info_type_id<79;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>107 AND title.production_year<117 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>68 AND movie_info.info_type_id<74;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>93 AND title.production_year<116 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>77 AND movie_info.info_type_id<105;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>87 AND title.production_year<118 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>84 AND movie_info.info_type_id<108;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>69 AND title.production_year<90 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>37 AND movie_info.info_type_id<71;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>89 AND title.production_year<110 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>81 AND movie_info.info_type_id<93;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>77 AND title.production_year<109 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>61 AND movie_info.info_type_id<94;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>117 AND title.production_year<126 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>65 AND movie_info.info_type_id<105;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>72 AND title.production_year<98 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>78 AND movie_info.info_type_id<83;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>83 AND title.production_year<115 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>61 AND movie_info.info_type_id<71;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>60 AND title.production_year<106 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>69 AND movie_info.info_type_id<81;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>85 AND title.production_year<121 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>79 AND movie_info.info_type_id<107;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>57 AND title.production_year<114 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>85 AND movie_info.info_type_id<87;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>52 AND title.production_year<95 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>74 AND movie_info.info_type_id<80;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>84 AND title.production_year<118 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>37 AND movie_info.info_type_id<95;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>63 AND title.production_year<121 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>81 AND movie_info.info_type_id<105;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<105 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>73 AND movie_info.info_type_id<94;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>89 AND title.production_year<109 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>72 AND movie_info.info_type_id<101;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<116 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>48 AND movie_info.info_type_id<86;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>84 AND title.production_year<124 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>59 AND movie_info.info_type_id<98;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>99 AND title.production_year<102 AND cast_info.role_id>4 AND cast_info.role_id<10 AND movie_info.info_type_id>76 AND movie_info.info_type_id<89;

/*+ MergeJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>91 AND title.production_year<99 AND cast_info.role_id>4 AND cast_info.role_id<9 AND movie_info.info_type_id>77 AND movie_info.info_type_id<80;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>73 AND title.production_year<108 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>75 AND movie_info.info_type_id<93;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>85 AND title.production_year<88 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>81 AND movie_info.info_type_id<87;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>82 AND title.production_year<126 AND cast_info.role_id>5 AND cast_info.role_id<10 AND movie_info.info_type_id>80 AND movie_info.info_type_id<88;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>80 AND title.production_year<84 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>58 AND movie_info.info_type_id<77;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>52 AND title.production_year<96 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>65 AND movie_info.info_type_id<101;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>89 AND title.production_year<110 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>55 AND movie_info.info_type_id<69;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>94 AND title.production_year<100 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>83 AND movie_info.info_type_id<96;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>51 AND title.production_year<104 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>72 AND movie_info.info_type_id<103;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>61 AND title.production_year<121 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>38 AND movie_info.info_type_id<96;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>89 AND title.production_year<116 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>62 AND movie_info.info_type_id<95;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>69 AND title.production_year<99 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>58 AND movie_info.info_type_id<87;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>72 AND title.production_year<90 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>94 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>27 AND title.production_year<93 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>82 AND movie_info.info_type_id<98;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>83 AND title.production_year<115 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>87 AND movie_info.info_type_id<94;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>55 AND title.production_year<89 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>60 AND movie_info.info_type_id<94;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>74 AND title.production_year<121 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>66 AND movie_info.info_type_id<101;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>107 AND title.production_year<115 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>69 AND movie_info.info_type_id<94;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>110 AND title.production_year<120 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>80 AND movie_info.info_type_id<106;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>87 AND title.production_year<122 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>51 AND movie_info.info_type_id<73;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>80 AND title.production_year<112 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>80 AND movie_info.info_type_id<98;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>91 AND title.production_year<99 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>71 AND movie_info.info_type_id<105;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>70 AND title.production_year<73 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>82 AND movie_info.info_type_id<93;

/*+ HashJoin(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>79 AND title.production_year<114 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>62 AND movie_info.info_type_id<79;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>83 AND title.production_year<85 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>76 AND movie_info.info_type_id<91;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>96 AND title.production_year<114 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>51 AND movie_info.info_type_id<106;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>113 AND title.production_year<119 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>77 AND movie_info.info_type_id<93;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>53 AND title.production_year<62 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>71 AND movie_info.info_type_id<89;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>103 AND title.production_year<121 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>69 AND movie_info.info_type_id<80;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>87 AND title.production_year<99 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>57 AND movie_info.info_type_id<76;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>78 AND title.production_year<95 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>60 AND movie_info.info_type_id<89;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>73 AND title.production_year<98 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>60 AND movie_info.info_type_id<97;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<103 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>54 AND movie_info.info_type_id<80;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>97 AND title.production_year<111 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>79 AND movie_info.info_type_id<105;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>75 AND title.production_year<118 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>87 AND movie_info.info_type_id<93;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>78 AND title.production_year<105 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>58 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>90 AND title.production_year<97 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>76 AND movie_info.info_type_id<103;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>76 AND title.production_year<99 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>79 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>86 AND title.production_year<90 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>51 AND movie_info.info_type_id<83;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>78 AND title.production_year<81 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>72 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>70 AND title.production_year<110 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>75 AND movie_info.info_type_id<104;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>91 AND title.production_year<109 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>78 AND movie_info.info_type_id<82;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>63 AND title.production_year<97 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>73 AND movie_info.info_type_id<88;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>73 AND title.production_year<120 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>76 AND movie_info.info_type_id<92;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<109 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>67 AND movie_info.info_type_id<98;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>103 AND title.production_year<116 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>77 AND movie_info.info_type_id<100;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>73 AND title.production_year<80 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>90 AND movie_info.info_type_id<97;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>82 AND title.production_year<113 AND cast_info.role_id>3 AND cast_info.role_id<10 AND movie_info.info_type_id>81 AND movie_info.info_type_id<96;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>85 AND title.production_year<103 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>82 AND movie_info.info_type_id<101;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>52 AND title.production_year<92 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>66 AND movie_info.info_type_id<91;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>32 AND title.production_year<84 AND cast_info.role_id>3 AND cast_info.role_id<8 AND movie_info.info_type_id>78 AND movie_info.info_type_id<97;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>100 AND title.production_year<122 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>64 AND movie_info.info_type_id<86;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>42 AND title.production_year<84 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>43 AND movie_info.info_type_id<72;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>118 AND title.production_year<123 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>69 AND movie_info.info_type_id<102;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>87 AND title.production_year<129 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>78 AND movie_info.info_type_id<101;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>69 AND title.production_year<77 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>62 AND movie_info.info_type_id<84;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>96 AND title.production_year<98 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>58 AND movie_info.info_type_id<92;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>40 AND title.production_year<103 AND cast_info.role_id>3 AND cast_info.role_id<9 AND movie_info.info_type_id>29 AND movie_info.info_type_id<71;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>40 AND title.production_year<92 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>43 AND movie_info.info_type_id<98;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>55 AND title.production_year<67 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>75 AND movie_info.info_type_id<102;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>102 AND title.production_year<123 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>52 AND movie_info.info_type_id<91;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>55 AND title.production_year<83 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>63 AND movie_info.info_type_id<90;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>80 AND title.production_year<105 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>57 AND movie_info.info_type_id<74;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>72 AND title.production_year<113 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>45 AND movie_info.info_type_id<77;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>76 AND title.production_year<121 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>68 AND movie_info.info_type_id<75;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>107 AND title.production_year<124 AND cast_info.role_id>3 AND cast_info.role_id<7 AND movie_info.info_type_id>61 AND movie_info.info_type_id<90;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>54 AND title.production_year<62 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>42 AND movie_info.info_type_id<86;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>93 AND title.production_year<120 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>70 AND movie_info.info_type_id<98;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>101 AND title.production_year<111 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>38 AND movie_info.info_type_id<92;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<111 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>77 AND movie_info.info_type_id<102;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>113 AND title.production_year<124 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>49 AND movie_info.info_type_id<96;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>93 AND title.production_year<107 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>83 AND movie_info.info_type_id<95;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<119 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>61 AND movie_info.info_type_id<91;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>96 AND title.production_year<115 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>78 AND movie_info.info_type_id<84;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>46 AND title.production_year<98 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>41 AND movie_info.info_type_id<76;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>45 AND title.production_year<102 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>72 AND movie_info.info_type_id<84;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>108 AND title.production_year<113 AND cast_info.role_id>5 AND cast_info.role_id<10 AND movie_info.info_type_id>37 AND movie_info.info_type_id<80;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>115 AND title.production_year<125 AND cast_info.role_id>5 AND cast_info.role_id<9 AND movie_info.info_type_id>94 AND movie_info.info_type_id<104;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>97 AND title.production_year<122 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>82 AND movie_info.info_type_id<96;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>72 AND title.production_year<86 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>86 AND movie_info.info_type_id<90;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>103 AND title.production_year<117 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>76 AND movie_info.info_type_id<95;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>112 AND title.production_year<121 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>26 AND movie_info.info_type_id<46;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>107 AND title.production_year<118 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>40 AND movie_info.info_type_id<84;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>75 AND title.production_year<112 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>64 AND movie_info.info_type_id<95;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>65 AND title.production_year<107 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>82 AND movie_info.info_type_id<90;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>90 AND title.production_year<98 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>72 AND movie_info.info_type_id<96;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>57 AND title.production_year<85 AND cast_info.role_id>3 AND cast_info.role_id<6 AND movie_info.info_type_id>47 AND movie_info.info_type_id<86;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>80 AND title.production_year<106 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>58 AND movie_info.info_type_id<77;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>65 AND title.production_year<102 AND cast_info.role_id>3 AND cast_info.role_id<8 AND movie_info.info_type_id>52 AND movie_info.info_type_id<76;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>81 AND title.production_year<87 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>93 AND movie_info.info_type_id<104;

/*+ HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(movie_info title cast_info)
 NestLoop(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>64 AND title.production_year<76 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>65 AND movie_info.info_type_id<95;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>78 AND title.production_year<116 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>67 AND movie_info.info_type_id<106;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>76 AND title.production_year<99 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>85 AND movie_info.info_type_id<88;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>104 AND title.production_year<122 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>84 AND movie_info.info_type_id<104;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>84 AND title.production_year<109 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>56 AND movie_info.info_type_id<65;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>75 AND title.production_year<89 AND cast_info.role_id>3 AND cast_info.role_id<5 AND movie_info.info_type_id>36 AND movie_info.info_type_id<45;

/*+ HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>100 AND title.production_year<117 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>94 AND movie_info.info_type_id<97;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>112 AND title.production_year<114 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>39 AND movie_info.info_type_id<90;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>64 AND title.production_year<130 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>50 AND movie_info.info_type_id<89;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>92 AND title.production_year<109 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>81 AND movie_info.info_type_id<92;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>79 AND title.production_year<98 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>86 AND movie_info.info_type_id<108;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>59 AND title.production_year<96 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>97 AND movie_info.info_type_id<106;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>82 AND title.production_year<102 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>41 AND movie_info.info_type_id<79;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>117 AND title.production_year<125 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>62 AND movie_info.info_type_id<104;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>102 AND title.production_year<105 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>72 AND movie_info.info_type_id<87;

/*+ HashJoin(title movie_info cast_info movie_info_idx)
 HashJoin(title movie_info cast_info)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((title movie_info) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>94 AND title.production_year<123 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>64 AND movie_info.info_type_id<105;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>36 AND title.production_year<89 AND cast_info.role_id>4 AND cast_info.role_id<6 AND movie_info.info_type_id>43 AND movie_info.info_type_id<75;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>90 AND title.production_year<112 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>71 AND movie_info.info_type_id<76;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>76 AND title.production_year<106 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>85 AND movie_info.info_type_id<104;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>64 AND title.production_year<120 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>84 AND movie_info.info_type_id<96;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>77 AND title.production_year<105 AND cast_info.role_id>4 AND cast_info.role_id<9 AND movie_info.info_type_id>72 AND movie_info.info_type_id<87;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>82 AND title.production_year<114 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>76 AND movie_info.info_type_id<86;

/*+ HashJoin(cast_info movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>77 AND title.production_year<97 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>79 AND movie_info.info_type_id<107;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>76 AND title.production_year<119 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>39 AND movie_info.info_type_id<76;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>103 AND title.production_year<113 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>54 AND movie_info.info_type_id<91;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>85 AND title.production_year<101 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>64 AND movie_info.info_type_id<78;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>103 AND title.production_year<113 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>74 AND movie_info.info_type_id<106;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>98 AND title.production_year<123 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>97 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>69 AND title.production_year<94 AND cast_info.role_id>8 AND cast_info.role_id<10 AND movie_info.info_type_id>78 AND movie_info.info_type_id<108;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>113 AND title.production_year<116 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>58 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>74 AND title.production_year<122 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>89 AND movie_info.info_type_id<98;

/*+ HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(movie_info title cast_info)
 NestLoop(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>83 AND title.production_year<98 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>63 AND movie_info.info_type_id<93;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>83 AND title.production_year<114 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>68 AND movie_info.info_type_id<81;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>105 AND title.production_year<122 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>76 AND movie_info.info_type_id<82;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>118 AND title.production_year<131 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>87 AND movie_info.info_type_id<103;

/*+ HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(movie_info title cast_info)
 NestLoop(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>74 AND title.production_year<83 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>59 AND movie_info.info_type_id<95;

/*+ HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>106 AND title.production_year<108 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>60 AND movie_info.info_type_id<67;

/*+ MergeJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>49 AND title.production_year<115 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>42 AND movie_info.info_type_id<72;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>73 AND title.production_year<83 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>64 AND movie_info.info_type_id<103;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>40 AND title.production_year<118 AND cast_info.role_id>5 AND cast_info.role_id<7 AND movie_info.info_type_id>67 AND movie_info.info_type_id<93;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>63 AND title.production_year<96 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>69 AND movie_info.info_type_id<84;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>93 AND title.production_year<121 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>57 AND movie_info.info_type_id<97;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>84 AND title.production_year<98 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>74 AND movie_info.info_type_id<93;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>104 AND title.production_year<120 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>92 AND movie_info.info_type_id<101;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>71 AND title.production_year<128 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>91 AND movie_info.info_type_id<106;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>119 AND title.production_year<128 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>88 AND movie_info.info_type_id<95;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>79 AND title.production_year<81 AND cast_info.role_id>4 AND cast_info.role_id<9 AND movie_info.info_type_id>50 AND movie_info.info_type_id<64;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>52 AND title.production_year<106 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>61 AND movie_info.info_type_id<89;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>104 AND title.production_year<125 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>79 AND movie_info.info_type_id<94;

/*+ HashJoin(movie_info title cast_info movie_info_idx)
 NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 IndexScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info_idx)
 Leading((((movie_info title) cast_info) movie_info_idx)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>71 AND title.production_year<95 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>84 AND movie_info.info_type_id<89;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>57 AND title.production_year<113 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>60 AND movie_info.info_type_id<99;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>73 AND title.production_year<87 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>45 AND movie_info.info_type_id<73;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>70 AND title.production_year<121 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>64 AND movie_info.info_type_id<90;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>69 AND title.production_year<112 AND cast_info.role_id>4 AND cast_info.role_id<8 AND movie_info.info_type_id>56 AND movie_info.info_type_id<78;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>81 AND title.production_year<84 AND cast_info.role_id>4 AND cast_info.role_id<7 AND movie_info.info_type_id>49 AND movie_info.info_type_id<87;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>65 AND title.production_year<106 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>73 AND movie_info.info_type_id<103;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>63 AND title.production_year<125 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>73 AND movie_info.info_type_id<81;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>97 AND title.production_year<114 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>75 AND movie_info.info_type_id<104;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>96 AND title.production_year<123 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>81 AND movie_info.info_type_id<87;

/*+ HashJoin(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>108 AND title.production_year<119 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>80 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>88 AND title.production_year<97 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>60 AND movie_info.info_type_id<80;

/*+ HashJoin(cast_info movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (title movie_info_idx)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>89 AND title.production_year<91 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>77 AND movie_info.info_type_id<103;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>62 AND title.production_year<113 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>57 AND movie_info.info_type_id<88;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>106 AND title.production_year<124 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>75 AND movie_info.info_type_id<83;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>76 AND title.production_year<79 AND cast_info.role_id>6 AND cast_info.role_id<10 AND movie_info.info_type_id>77 AND movie_info.info_type_id<99;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>111 AND title.production_year<114 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>56 AND movie_info.info_type_id<77;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>90 AND title.production_year<95 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>58 AND movie_info.info_type_id<100;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>48 AND title.production_year<100 AND cast_info.role_id>7 AND cast_info.role_id<10 AND movie_info.info_type_id>91 AND movie_info.info_type_id<100;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>79 AND title.production_year<103 AND cast_info.role_id>6 AND cast_info.role_id<9 AND movie_info.info_type_id>81 AND movie_info.info_type_id<90;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>69 AND title.production_year<104 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>77 AND movie_info.info_type_id<84;

/*+ NestLoop(title movie_info movie_info_idx cast_info)
 HashJoin(title movie_info movie_info_idx)
 HashJoin(title movie_info)
 SeqScan(title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_info_idx) cast_info)) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>80 AND title.production_year<105 AND cast_info.role_id>5 AND cast_info.role_id<8 AND movie_info.info_type_id>58 AND movie_info.info_type_id<78;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>38 AND title.production_year<102 AND cast_info.role_id>7 AND cast_info.role_id<9 AND movie_info.info_type_id>95 AND movie_info.info_type_id<107;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>43 AND title.production_year<93 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>87 AND movie_info.info_type_id<98;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>44 AND title.production_year<87 AND cast_info.role_id>3 AND cast_info.role_id<7 AND movie_info.info_type_id>81 AND movie_info.info_type_id<94;

/*+ HashJoin(movie_info_idx cast_info title movie_info)
 HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((movie_info_idx (cast_info (title movie_info)))) */
SELECT COUNT(*) FROM title,cast_info,movie_info,movie_info_idx WHERE title.id=movie_info.movie_id AND title.id=movie_info_idx.movie_id AND title.id=cast_info.movie_id AND title.production_year>96 AND title.production_year<121 AND cast_info.role_id>6 AND cast_info.role_id<8 AND movie_info.info_type_id>74 AND movie_info.info_type_id<105;

