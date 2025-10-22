/*+ HashJoin(v c u p)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((v (c (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-09-11 16:37:35'::timestamp AND p.PostTypeId=2 AND p.Score<=18 AND u.DownVotes>=0 AND u.CreationDate>='2010-07-27 19:11:21'::timestamp;

