/*+ HashJoin(v u p b)
 HashJoin(u p b)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-05 00:00:00'::timestamp AND p.Score<=16 AND p.CreationDate<='2014-09-10 12:59:41'::timestamp AND u.Views>=0 AND u.CreationDate>='2010-07-21 03:28:48'::timestamp;

