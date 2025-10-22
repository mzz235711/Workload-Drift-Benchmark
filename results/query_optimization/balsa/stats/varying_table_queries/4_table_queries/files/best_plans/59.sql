/*+ HashJoin(v c u p)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((v (c (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score>=0 AND p.ViewCount<=11002 AND p.CreationDate>='2010-08-04 16:04:56'::timestamp AND u.Reputation>=1 AND u.Views>=0 AND u.CreationDate<='2014-08-26 12:53:36'::timestamp;

