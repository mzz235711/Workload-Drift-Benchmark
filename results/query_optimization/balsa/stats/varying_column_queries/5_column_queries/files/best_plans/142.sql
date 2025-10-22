/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-09-19 10:29:29'::timestamp AND c.CreationDate<='2014-09-09 17:38:10'::timestamp AND u.Reputation<=126 AND u.DownVotes<=0 AND u.UpVotes<=25;

