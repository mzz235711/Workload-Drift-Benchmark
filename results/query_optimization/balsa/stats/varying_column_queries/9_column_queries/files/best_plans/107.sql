/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-13 17:53:27'::timestamp AND p.Score>=-3 AND p.Score<=14 AND p.ViewCount>=0 AND p.ViewCount<=5706 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND u.Views=0;

