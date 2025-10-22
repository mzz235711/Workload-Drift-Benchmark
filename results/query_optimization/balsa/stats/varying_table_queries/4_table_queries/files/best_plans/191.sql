/*+ HashJoin(b u v p)
 HashJoin(u v p)
 HashJoin(v p)
 SeqScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND p.ViewCount>=0 AND p.ViewCount<=5788 AND b.Date>='2010-07-27 22:08:47'::timestamp AND b.Date<='2014-09-08 13:35:11'::timestamp AND u.Reputation>=1 AND u.Reputation<=342 AND u.DownVotes=0;

