/*+ HashJoin(b c u)
 MergeJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND b.Date>='2010-07-19 20:34:06'::timestamp;

