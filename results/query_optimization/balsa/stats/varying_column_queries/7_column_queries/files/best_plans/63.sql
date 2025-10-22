/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=0 AND p.Score<=18 AND p.ViewCount=6 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.CreationDate<='2014-09-09 00:41:41'::timestamp AND b.Date<='2014-08-24 02:16:43'::timestamp;

