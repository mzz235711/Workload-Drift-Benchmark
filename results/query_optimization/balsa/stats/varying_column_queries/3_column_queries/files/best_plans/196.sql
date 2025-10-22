/*+ HashJoin(p c u)
 MergeJoin(c u)
 SeqScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND c.CreationDate='2014-05-25 02:51:16'::timestamp AND u.CreationDate>='2010-07-19 19:52:32'::timestamp;

