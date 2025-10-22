/*+ HashJoin(b v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(b)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 Leading((b (v (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-08-11 00:00:00'::timestamp AND b.Date<='2014-09-04 00:12:46'::timestamp AND u.Reputation<=1033 AND u.Views>=0;

