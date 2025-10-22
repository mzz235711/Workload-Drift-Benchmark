/*+ HashJoin(c u b)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date>='2010-07-19 19:39:08'::timestamp AND u.Reputation>=1 AND u.Reputation<=10647 AND u.UpVotes<=128 AND u.CreationDate>='2010-07-26 21:47:37'::timestamp AND u.CreationDate<='2014-09-11 12:06:49'::timestamp;

