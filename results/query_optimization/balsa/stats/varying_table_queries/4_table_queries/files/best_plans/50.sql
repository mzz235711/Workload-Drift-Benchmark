/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.PostTypeId=1 AND p.CreationDate>='2010-07-27 14:02:37'::timestamp AND p.CreationDate<='2014-09-01 21:20:46'::timestamp AND b.Date>='2010-08-04 07:35:31'::timestamp AND u.Views>=0;

