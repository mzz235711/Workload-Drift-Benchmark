/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=2 AND p.CreationDate<='2014-09-04 23:01:02'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Reputation<=113 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

