/*+ HashJoin(v u c p)
 MergeJoin(v u c)
 MergeJoin(v u)
 SeqScan(v)
 SeqScan(u)
 IndexScan(c)
 SeqScan(p)
 Leading((((v u) c) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.Score<=18 AND p.CommentCount<=18 AND p.CreationDate>='2010-08-17 09:11:30'::timestamp AND p.CreationDate<='2014-09-07 13:21:30'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp;

