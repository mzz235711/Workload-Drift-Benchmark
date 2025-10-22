/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=1 AND v.VoteTypeId=5 AND u.Reputation<=365 AND u.DownVotes>=0 AND u.CreationDate>='2010-12-05 01:42:53'::timestamp AND u.CreationDate<='2014-08-12 09:23:11'::timestamp;

