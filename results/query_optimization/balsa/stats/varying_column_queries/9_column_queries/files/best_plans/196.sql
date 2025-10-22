/*+ HashJoin(b u p v)
 HashJoin(u p v)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b ((u p) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount<=100 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND p.PostTypeId=2 AND p.CreationDate>='2010-07-27 07:24:19'::timestamp AND p.CreationDate<='2014-09-04 13:45:36'::timestamp AND u.Reputation<=5134 AND u.DownVotes>=0 AND u.DownVotes<=6 AND u.UpVotes=0;

