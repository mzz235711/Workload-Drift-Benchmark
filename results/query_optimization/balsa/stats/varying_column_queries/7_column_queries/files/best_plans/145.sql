/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.Score=0 AND c.CreationDate<='2014-09-03 01:27:54'::timestamp AND u.Reputation<=275 AND u.Views>=0 AND u.Views<=16 AND u.CreationDate>='2010-07-29 18:45:30'::timestamp AND u.CreationDate<='2014-09-08 06:35:13'::timestamp;

