/*+ HashJoin(b c u)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 Leading((b (c u))) */
SELECT COUNT(*) FROM comments as c, badges as b, users as u WHERE u.Id = c.UserId AND c.UserId = b.UserId AND u.Reputation<=388 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-17 12:01:44'::timestamp AND u.CreationDate<='2014-09-11 10:56:25'::timestamp;

