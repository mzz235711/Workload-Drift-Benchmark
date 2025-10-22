/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND c.CreationDate>='2010-07-19 20:32:02'::timestamp AND c.CreationDate<='2014-09-08 02:11:32'::timestamp AND u.Reputation<=898 AND u.DownVotes<=2 AND u.UpVotes>=0;

