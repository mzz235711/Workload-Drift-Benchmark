/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.Score>=-2 AND p.CreationDate>='2010-10-04 07:15:14'::timestamp AND p.CreationDate<='2014-09-06 10:53:12'::timestamp AND b.Date>='2010-08-01 09:59:54'::timestamp AND u.Views>=0 AND u.Views<=15;

