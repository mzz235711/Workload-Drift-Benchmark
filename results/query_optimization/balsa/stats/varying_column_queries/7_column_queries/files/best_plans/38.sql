/*+ HashJoin(v ph p u)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(v)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((v (ph (p u)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND ph.PostHistoryTypeId=2 AND p.ViewCount<=3098 AND p.CommentCount>=0 AND p.CommentCount<=13 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND p.CreationDate<='2014-09-03 05:07:29'::timestamp;

