/*+ HashJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate<='2014-09-12 21:29:46'::timestamp AND p.FavoriteCount=0 AND u.Views<=74 AND u.UpVotes<=47 AND u.CreationDate<='2014-08-28 08:21:55'::timestamp;

