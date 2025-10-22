/*+ HashJoin(v u c p)
 HashJoin(u c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((v (u (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.ViewCount<=10802 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation<=1236 AND u.UpVotes=0 AND u.CreationDate>='2010-11-03 14:43:38'::timestamp;

