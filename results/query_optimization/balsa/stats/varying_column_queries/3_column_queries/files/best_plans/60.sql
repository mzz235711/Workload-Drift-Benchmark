/*+ HashJoin(v b c u)
 MergeJoin(b c u)
 MergeJoin(c u)
 IndexScan(v)
 SeqScan(b)
 IndexScan(c)
 IndexScan(u)
 Leading((v (b (c u)))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=0 AND v.VoteTypeId=5 AND u.CreationDate>='2010-08-04 16:02:56'::timestamp;

