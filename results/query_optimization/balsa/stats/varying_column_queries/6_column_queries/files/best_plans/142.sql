/*+ HashJoin(b c u v)
 HashJoin(c u v)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading((b ((c u) v))) */
SELECT COUNT(*) FROM comments as c, votes as v, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND c.Score=4 AND b.Date>='2010-07-23 13:53:26'::timestamp AND b.Date<='2014-08-11 16:17:57'::timestamp AND u.Reputation<=423 AND u.CreationDate>='2010-07-19 19:14:51'::timestamp AND u.CreationDate<='2014-08-01 11:26:20'::timestamp;

