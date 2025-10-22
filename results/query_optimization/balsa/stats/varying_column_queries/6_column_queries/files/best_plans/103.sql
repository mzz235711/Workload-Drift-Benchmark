/*+ MergeJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.ViewCount=1507 AND p.FavoriteCount>=0 AND p.FavoriteCount<=27 AND u.Views>=0 AND u.CreationDate>='2011-01-08 12:24:04'::timestamp AND u.CreationDate<='2014-08-14 11:00:05'::timestamp;

