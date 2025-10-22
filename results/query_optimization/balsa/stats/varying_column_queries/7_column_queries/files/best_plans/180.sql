/*+ HashJoin(ph p u)
 MergeJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.ViewCount>=0 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND p.CreationDate<='2014-08-29 13:57:56'::timestamp AND u.DownVotes>=0 AND u.CreationDate<='2014-08-26 23:04:58'::timestamp;

