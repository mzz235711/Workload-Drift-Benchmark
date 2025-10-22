/*+ HashJoin(c u b)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(b)
 Leading(((c u) b)) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND b.Date<='2014-09-10 06:16:32'::timestamp AND u.Reputation<=131 AND u.DownVotes<=0 AND u.CreationDate>='2010-07-19 21:51:32'::timestamp AND u.CreationDate<='2014-09-07 19:43:01'::timestamp;

